# ============================================================
# UC7 - DC01 - Configuracao inicial
# ============================================================
# Este script prepara o Windows Server para as aulas:
#   - IP fixo na rede interna do laboratorio
#   - DNS apontando para o proprio servidor
#   - nome do computador DC01
#   - fuso horario e ICMP liberado
#
# Ele NAO promove o servidor a controlador de dominio.
# A promocao do AD DS e feita pelo aluno na Aula 08.
# ============================================================

$ErrorActionPreference = "Stop"

$ip       = "192.168.10.10"
$prefix   = 24
$dns      = "192.168.10.10"
$hostname = "DC01"

Write-Host "==> DC01: identificando o adaptador da rede interna..."

# O adaptador NAT (gerenciamento do Vagrant) possui a rota default.
# O adaptador interno nao possui gateway e e o alvo deste script.
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

# Remove enderecos antigos do adaptador interno e aplica o IP fixo.
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
Write-Host "==> DC01 configurado."
Get-NetIPConfiguration -InterfaceIndex $ifIndex | Format-List
Write-Host ""
Write-Host "Reinicie a VM para aplicar o novo nome:"
Write-Host "  vagrant reload dc01"
