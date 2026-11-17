# Laboratório VirtualBox - Aula 02: O servidor na rede local e a UC7

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Servidor de arquivos básico no CLI01 acessado pelo CLI02, com ficha de configuração e evidências.

---

## Objetivo

Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e criar um servidor de arquivos básico com compartilhamento SMB.

## VMs desta aula

- **CLI01** — Windows 10, com a pasta compartilhada (servidor de arquivos básico)
- **CLI02** — Windows 10, cliente que acessa o compartilhamento

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs CLI01 e CLI02 da Aula 01 estão disponíveis.
2. Verifique se as duas VMs usam a rede interna `rede-nexatech`.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Inventariar as dores da NexaTech e os serviços a centralizar
2. Ligar CLI01 e CLI02 e confirmar os IPs `192.168.10.100` e `192.168.10.101`
3. No CLI01, criar a pasta `C:\Compartilhado` com um arquivo de teste
4. Compartilhar a pasta via SMB com o nome `nexatech`
5. Definir permissões de leitura e alteração para os usuários do laboratório
6. No CLI02, acessar `\\192.168.10.100\nexatech`, abrir o arquivo e gravar um novo arquivo
7. Mapear a unidade `Z:` para o compartilhamento
8. Registrar prints e as saídas de `net share` e `net use`

## Configuração de exemplo

| VM | Papel | IP | Compartilhamento |
| :--- | :--- | :--- | :--- |
| CLI01 | Servidor de arquivos básico | 192.168.10.100 | `\\192.168.10.100\nexatech` |
| CLI02 | Cliente | 192.168.10.101 | unidade `Z:` |

## Testes e evidências

- Print da pasta `C:\Compartilhado` e das permissões de compartilhamento no CLI01.
- Print do acesso ao compartilhamento e da gravação de arquivo pelo CLI02.
- Saída de `net share` no CLI01 e de `net use` no CLI02.
- Registro do que acontece ao tentar gravar sem permissão de alteração.
- Atualize o documento do projeto integrador com a ficha do compartilhamento.

## Comandos úteis

```powershell
# Conferir IP e conectividade
ipconfig /all
ping 192.168.10.100

# No CLI01: listar compartilhamentos
net share

# No CLI02: acessar e mapear a unidade
net use Z: \\192.168.10.100\nexatech
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- Se o acesso falhar, confira o firewall do Windows, o nome do compartilhamento e as permissões.
- Este compartilhamento é introdutório. Permissões NTFS, quotas, versionamento e backup serão aprofundados na Aula 14, no Windows Server.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Apresenta o cenário da NexaTech e o problema de negócio que conduzirá a UC.

**O que fica em aberto:** Quais serviços serão necessários e como eles se conectam fisicamente?

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula02.html) e a [atividade](../atividade.md).
