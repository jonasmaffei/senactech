# ============================================================
# UC7 - CLI01 - Configuracao inicial do cliente Windows
# ============================================================
# Prepara o cliente para testar a rede cliente/servidor:
#   - IP fixo na rede interna (192.168.10.100)
#   - DNS apontando para o DC01
#   - nome do computador CLI01
#   - ICMP liberado
#
# O ingresso no dominio e feito pelo aluno na Aula 08.
# ============================================================

$ErrorActionPreference = "Stop"

$ip       = "192.168.10.100"
$prefix   = 24
$dns      = "192.168.10.10"
$hostname = "CLI01"

Write-Host "==> CLI01: identificando o adaptador da rede interna..."

$defaultRoute = Get-NetRoute -DestinationPrefix "0.0.0.0/0" -ErrorAction SilentlyContinue |
    Select-Object -First 1

$internal = Get-NetAdapter -ErrorAction Stop |
    Where-Object {
        $_.Status -eq "Up" -and
        $_.InterfaceDescription -notmatch "Loopback" -and
        (-not $defaultRoute -or $_.ifIndex -ne $defaultRoute.InterfaceIndex)
    } |
    Select-Object -First 1

if (-not $internal) {
    throw "Adaptador da rede interna nao encontrado. Verifique a rede rede-nexatech no VirtualBox."
}

$ifIndex = $internal.ifIndex
Write-Host "    Adaptador: $($internal.Name) (ifIndex $ifIndex)"

Get-NetIPAddress -InterfaceIndex $ifIndex -AddressFamily IPv4 -ErrorAction SilentlyContinue |
    Where-Object { $_.IPAddress -ne $ip } |
    Remove-NetIPAddress -Confirm:$false -ErrorAction SilentlyContinue

if (-not (Get-NetIPAddress -InterfaceIndex $ifIndex -IPAddress $ip -ErrorAction SilentlyContinue)) {
    New-NetIPAddress -InterfaceIndex $ifIndex -IPAddress $ip -PrefixLength $prefix -ErrorAction Stop | Out-Null
}

Set-DnsClientServerAddress -InterfaceIndex $ifIndex -ServerAddresses $dns

try {
    Get-NetConnectionProfile -InterfaceIndex $ifIndex -ErrorAction Stop |
        Set-NetConnectionProfile -NetworkCategory Private -ErrorAction Stop
} catch {
    Write-Host "    Aviso: nao foi possivel definir o perfil de rede como Private."
}

if ($env:COMPUTERNAME -ne $hostname) {
    Write-Host "==> Renomeando o computador para $hostname..."
    Rename-Computer -NewName $hostname -Force -ErrorAction Stop
}

Set-TimeZone -Id "E. South America Standard Time" -ErrorAction SilentlyContinue

New-NetFirewallRule -DisplayName "UC7 ICMPv4" -Protocol ICMPv4 -IcmpType 8 `
    -Direction Inbound -Action Allow -ErrorAction SilentlyContinue | Out-Null

Write-Host ""
Write-Host "==> CLI01 configurado."
Get-NetIPConfiguration -InterfaceIndex $ifIndex | Format-List
Write-Host ""
Write-Host "Reinicie a VM para aplicar o novo nome:"
Write-Host "  vagrant reload cli01"
