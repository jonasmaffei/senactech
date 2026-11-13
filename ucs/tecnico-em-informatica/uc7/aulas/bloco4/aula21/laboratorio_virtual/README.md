# Laboratório VirtualBox - Aula 21: Administração e operação do Linux

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Runbook de operação do Linux Server.

---

## Objetivo

Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.

## VMs desta aula

APP01.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Configurar os repositórios e atualizar o sistema com APT
2. Criar um serviço systemd simples
3. Agendar um backup com systemd timer
4. Analisar logs e identificar um erro
5. Verificar uso de disco e permissões de arquivos

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula21"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula21"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Transforma a instalação da Aula 20 em operação repetível e auditável.

**O que fica em aberto:** Com a operação sob controle, é hora de publicar os serviços de rede no Linux.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula21.html) e a [atividade](../atividade.md).
