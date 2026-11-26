# Passo a passo — Configuração inicial e instalação do AD DS

**Aula:** 09 — Active Directory Domain Services  
**Bloco:** 2 — Windows Server  
**VM:** Windows Server (nome inicial `SRV` → renomear para `DC01`)  
**Domínio:** `nexatech.local`

Este guia cobre, na ordem:

1. verificação e configuração do IP do servidor;
2. renomeação da VM para `DC01`;
3. instalação da função **Active Directory Domain Services (AD DS)**;
4. promoção do servidor a controlador de domínio;
5. validação do domínio.

> **Padrão de rede desta prática:** o DC01 usa `192.168.10.2/24`, com DNS `127.0.0.1`.  
> Se algum material antigo da UC citar `192.168.10.10`, prevaleça o padrão definido pelo professor para a turma e mantenha o mesmo IP em todas as aulas.

---

## Antes de começar

1. Ligue a VM do Windows Server e entre com uma conta **administrativa local**.
2. Confirme que a VM tem **dois adaptadores** no VirtualBox:
   - **NAT** — acesso à internet e atualizações;
   - **Rede Interna `rede-nexatech`** — rede da NexaTech.
3. Tire um snapshot antes de qualquer alteração:

```powershell
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula09-antes-ad"
```

4. Não ingresse o servidor em nenhum domínio ainda: ele será o **primeiro** controlador de domínio da floresta.

---

## 1. Verificar e configurar o IP do servidor (`ncpa.cpl`)

### Pela interface gráfica

1. Pressione `Win + R`, digite `ncpa.cpl` e pressione **Enter**.
2. Identifique o adaptador da **rede interna** (`rede-nexatech`). Ele normalmente aparece como **Ethernet 2** ou similar.
   - **Não** configure IP fixo no adaptador NAT: ele pode continuar em DHCP/automático.
3. Clique com o botão direito no adaptador da rede interna e escolha **Propriedades**.
4. Selecione **Protocolo IP Versão 4 (TCP/IPv4)** e clique em **Propriedades**.
5. Preencha:

| Campo | Valor |
| :--- | :--- |
| Endereço IP | `192.168.10.2` |
| Máscara de sub-rede | `255.255.255.0` |
| Gateway padrão | `192.168.10.1` (se o FW01 já estiver configurado; caso contrário, deixe em branco) |
| Servidor DNS preferencial | `127.0.0.1` |
| Servidor DNS alternativo | (deixar em branco) |

6. Clique em **OK** em todas as janelas para aplicar.

> O DNS `127.0.0.1` aponta para o próprio servidor. Neste momento o serviço de DNS ainda não existe: ele será instalado junto com o AD DS. É normal a resolução de nomes externos não funcionar até configurarmos os encaminhadores de DNS em uma aula posterior.

### Validação

Abra o PowerShell como administrador e execute:

```powershell
ipconfig /all
```

Confira na saída do adaptador da rede interna:

```text
IPv4 Address. . . . . . . . . . . : 192.168.10.2
Subnet Mask . . . . . . . . . . . : 255.255.255.0
Default Gateway . . . . . . . . . : 192.168.10.1
DNS Servers . . . . . . . . . . . : 127.0.0.1
```

Teste a própria placa:

```powershell
ping 192.168.10.2
```

### Equivalente em PowerShell

Se preferir configurar por comando, descubra primeiro o nome do adaptador:

```powershell
Get-NetAdapter
```

Depois aplique (troque `"rede-nexatech"` pelo nome exibido):

```powershell
New-NetIPAddress -InterfaceAlias "rede-nexatech" `
  -IPAddress 192.168.10.2 `
  -PrefixLength 24 `
  -DefaultGateway 192.168.10.1

Set-DnsClientServerAddress -InterfaceAlias "rede-nexatech" `
  -ServerAddresses 127.0.0.1
```

> Se o adaptador já tiver um IP configurado, remova antes com `Remove-NetIPAddress` ou ajuste pela interface gráfica.

---

## 2. Renomear o servidor para `DC01`

O nome deve ser definido **antes** da promoção a controlador de domínio. Depois que o AD DS está instalado, renomear o DC exige procedimentos adicionais e não é o objetivo desta aula.

### Opção A — Pelo "This PC"

1. Na área de trabalho, clique com o botão direito em **This PC** (Este Computador).
2. Escolha **Rename this PC** (Renomear este computador) ou **Properties → Rename this PC (advanced)**.
3. No campo **Computer name**, digite `DC01`.
4. Confirme e **reinicie** o servidor quando solicitado.

### Opção B — Pelo Gerenciador do Servidor

1. Abra o **Server Manager**.
2. No menu lateral, clique em **Local Server**.
3. Em **Computer name**, clique no nome atual.
4. Clique em **Change...**, digite `DC01` e confirme.
5. Reinicie o servidor.

### Opção C — Pelo `sysdm.cpl`

1. Pressione `Win + R`, digite `sysdm.cpl` e pressione **Enter**.
2. Abra a aba **Computer Name**.
3. Clique em **Change...**, informe `DC01` e confirme.
4. Reinicie o servidor.

### Opção D — PowerShell

```powershell
Rename-Computer -NewName "DC01" -Restart
```

### Validação

Após reiniciar, abra o PowerShell e execute:

```powershell
hostname
```

Saída esperada:

```text
DC01
```

---

## 3. Instalar a função AD DS

### Pela interface gráfica (a partir do "This PC")

1. Clique com o botão direito em **This PC** e escolha **Manage** (Gerenciar).
   - Também é possível abrir o **Server Manager** e usar **Manage → Add Roles and Features**.
2. No **Server Manager**, clique em **Manage → Add Roles and Features**.
3. Na tela **Before you begin**, clique em **Next**.
4. Em **Installation Type**, selecione **Role-based or feature-based installation** e clique em **Next**.
5. Em **Server Selection**, confirme o servidor `DC01` e clique em **Next**.
6. Em **Server Roles**, marque **Active Directory Domain Services**.
7. Na janela que abrir, clique em **Add Features** para incluir as ferramentas de gerenciamento.
8. Clique em **Next** nas telas seguintes, mantenha os recursos padrão e clique em **Install**.
9. Aguarde a instalação até 100% e clique em **Close**.

> **Importante:** ao final da instalação, o servidor **ainda não é** um controlador de domínio. A função apenas foi instalada. A promoção é o próximo passo.

### Equivalente em PowerShell

```powershell
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
```

Verifique o resultado:

```powershell
Get-WindowsFeature AD-Domain-Services
```

Saída esperada:

```text
Display Name                                            Name                       Install State
------------                                            ----                       -------------
[ ] Active Directory Domain Services                    AD-Domain-Services             Installed
```

### Evidência desta etapa

- Print do **Server Manager** com a função **AD DS** listada.
- Print da saída de `Get-WindowsFeature AD-Domain-Services`.

---

## 4. Promover o servidor a controlador de domínio

### Pela interface gráfica

1. No **Server Manager**, clique no ícone de **notificações** (bandeira com triângulo amarelo).
2. Clique em **Promote this server to a domain controller**.
3. Em **Deployment Configuration**, selecione **Add a new forest**.
4. Em **Root domain name**, digite exatamente:

```text
nexatech.local
```

5. Clique em **Next**.
6. Em **Domain Controller Options**:
   - mantenha o nível funcional da floresta e do domínio compatível com a versão do Windows Server;
   - confirme **Domain Name System (DNS) server** e **Global Catalog (GC)** marcados;
   - defina uma senha forte para o **DSRM (Directory Services Restore Mode)** e guarde-a.
7. Clique em **Next**.
8. Em **DNS Options**, o aviso *“A delegation for this DNS server cannot be created...”* é **normal** em uma floresta nova. Clique em **Next**.
9. Em **Additional Options**, confirme o nome NetBIOS `NEXATECH` e clique em **Next**.
10. Em **Paths**, mantenha os caminhos padrão (`NTDS` e `SYSVOL`) e clique em **Next**.
11. Em **Review Options**, revise o resumo e clique em **Next**.
12. Em **Prerequisites Check**, aguarde a mensagem de sucesso e clique em **Install**.
13. O servidor será promovido e **reiniciará automaticamente**.

### Equivalente em PowerShell

Execute em um PowerShell como administrador. O comando solicitará a senha do DSRM:

```powershell
Install-ADDSForest `
  -DomainName "nexatech.local" `
  -DomainNetbiosName "NEXATECH" `
  -InstallDns `
  -Force
```

> O parâmetro `-Force` suprime apenas a confirmação interativa; a checagem de pré-requisitos continua sendo executada. Leia a saída do comando antes de reiniciar.

---

## 5. Primeiro logon no domínio e validação

Após o reinício:

1. Na tela de logon, o campo de usuário deve exibir o domínio, por exemplo:

```text
NEXATECH\Administrator
```

2. Entre com a senha da conta de administrador do domínio.

### Testes no PowerShell

```powershell
whoami
```

Saída esperada:

```text
nexatech\administrator
```

```powershell
nltest /dsgetdc:nexatech.local
```

Saída esperada (resumo): nome do DC, IP `192.168.10.2` e flags `[DS] [GC] [KDC] [TIMESERV]`.

```powershell
dcdiag /test:dns
```

Saída esperada: testes concluídos com status **Passed**.

```powershell
Get-ADDomain
```

Confira `DNSRoot`, `NetBIOSName`, `DomainMode` e `PDCEmulator`.

### Verificações visuais

1. Abra **Active Directory Users and Computers**:

```powershell
dsa.msc
```

2. Confirme que o domínio `nexatech.local` aparece na árvore.
3. Abra o **DNS Manager**:

```powershell
dnsmgmt.msc
```

4. Em **Forward Lookup Zones → nexatech.local**, confirme a existência da pasta `_msdcs`, dos registros `_kerberos` e `_ldap`, e do registro A do `dc01`.
5. No **Server Manager**, confirme que os módulos **AD DS** e **DNS** aparecem no menu lateral.

---

## 6. Checklist de evidências

| Etapa | Evidência |
| :--- | :--- |
| IP e DNS | Print de `ipconfig /all` mostrando `192.168.10.2` e DNS `127.0.0.1` |
| Nome do servidor | Print de `hostname` retornando `DC01` |
| Função instalada | Print de `Get-WindowsFeature AD-Domain-Services` com estado `Installed` |
| Promoção | Print da tela final do assistente ou da saída de `Install-ADDSForest` |
| Domínio | Print de `Get-ADDomain` e de `dsa.msc` com `nexatech.local` |
| Saúde do AD | Print de `nltest /dsgetdc:nexatech.local` e `dcdiag /test:dns` |
| Snapshot | Nome do snapshot criado após a validação, por exemplo `Snapshot_Aula09_ADDS_Promovido` |

---

## 7. Problemas comuns

| Sintoma | Causa provável | Como resolver |
| :--- | :--- | :--- |
| A promoção falha e o assistente aponta erro de DNS | DNS do adaptador não aponta para `127.0.0.1` ou o IP está incorreto | Volte ao `ncpa.cpl`, confira IP `192.168.10.2` e DNS `127.0.0.1` |
| O servidor não encontra o domínio após a promoção | Adaptador errado configurado ou IP duplicado na rede | Rode `ipconfig /all` e `ping 192.168.10.2`; ajuste o adaptador da rede interna |
| O nome do servidor continua `SRV` | Renomeação não aplicada ou reinício pendente | Renomeie antes da promoção e reinicie |
| Aviso de delegação DNS | Comportamento esperado em floresta nova | Ignorar e avançar |
| Erro de senha do DSRM | Senha fraca ou não atende à política | Use uma senha forte e guarde-a |
| `dcdiag` falha em horário/Kerberos | Relógio da VM dessincronizado | Verifique o horário e o fuso; use `w32tm /resync` se necessário |
| Perda de configuração | Alteração sem snapshot | Restaure o snapshot `baseline-aula09-antes-ad` e refaça o processo |

---

## 8. Próximos passos

Com o domínio `nexatech.local` criado, a **Aula 10** trata do ingresso dos clientes Windows 10 (`CLI01` e `CLI02`) no domínio e das primeiras verificações de autenticação.

> Consulte também o [guia da aula](README.md), o [roteiro de laboratório](laboratorio_virtual/README.md), a [apresentação](apresentacao_aula09.html) e a [atividade](atividade.md).
