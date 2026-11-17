# Laboratório VirtualBox - Aula 02: O servidor na rede local e a UC7

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Servidor de arquivos básico na FS01 acessado pelo CLI01 e pelo CLI02, com ficha de configuração e evidências.

---

## Objetivo

Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e criar um servidor de arquivos básico com compartilhamento SMB.

**Dores que esta prática começa a resolver:** arquivos espalhados em um PC comum, falta de autenticação central, falhas de rede resolvidas no improviso e ausência de monitoramento. Nesta aula, a pasta compartilhada ataca a primeira dor; as demais serão tratadas nas aulas seguintes.

## VMs desta aula

- **FS01** — Windows 10, com a pasta compartilhada (servidor de arquivos básico)
- **CLI01** — Windows 10, cliente que acessa o compartilhamento
- **CLI02** — Windows 10, cliente que acessa o compartilhamento

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs CLI01 e CLI02 da Aula 01 estão disponíveis.
2. Tenha em mãos a ISO do Windows 10 para criar a terceira VM, a FS01.
3. Verifique se as três VMs usam a rede interna `rede-nexatech`.
4. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Preencher a ficha de dores com as quatro situações da NexaTech e classificar os serviços em essenciais, importantes e opcionais
2. Criar a VM FS01 com Windows 10 e adicioná-la à rede interna `rede-nexatech`
3. Configurar na FS01 o IP `192.168.10.102` e confirmar os IPs do CLI01 e do CLI02
4. Na FS01, criar a pasta `C:\Compartilhado` com um arquivo de teste
5. Compartilhar a pasta via SMB com o nome `nexatech`
6. Definir permissões de leitura e alteração para os usuários do laboratório
7. No CLI01 e no CLI02, acessar `\\192.168.10.102\nexatech`, abrir o arquivo e gravar um novo arquivo
8. Mapear a unidade `Z:` para o compartilhamento
9. Registrar prints e as saídas de `net share` e `net use`

## Configuração de exemplo

| VM | Papel | IP | Compartilhamento |
| :--- | :--- | :--- | :--- |
| FS01 | Servidor de arquivos básico | 192.168.10.102 | `\\192.168.10.102\nexatech` |
| CLI01 | Cliente | 192.168.10.100 | unidade `Z:` |
| CLI02 | Cliente | 192.168.10.101 | unidade `Z:` |

## Testes e evidências

- Print da pasta `C:\Compartilhado` e das permissões de compartilhamento na FS01.
- Print do acesso ao compartilhamento e da gravação de arquivo pelo CLI01 e pelo CLI02.
- Saída de `net share` na FS01 e de `net use` nos clientes.
- Registro do que acontece ao tentar gravar sem permissão de alteração.
- Atualize o documento do projeto integrador com a ficha do compartilhamento.

## Comandos úteis

```powershell
# Conferir IP e conectividade
ipconfig /all
ping 192.168.10.102

# Na FS01: listar compartilhamentos
net share

# No CLI01 e no CLI02: acessar e mapear a unidade
net use Z: \\192.168.10.102\nexatech
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
