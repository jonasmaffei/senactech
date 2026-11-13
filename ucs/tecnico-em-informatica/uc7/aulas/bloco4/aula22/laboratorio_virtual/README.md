# Laboratório VirtualBox - Aula 22: Usuários, grupos e permissões no Linux

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Relatório de contas, grupos e permissões, com testes de sudo.

---

## Objetivo

Gerenciar usuários, grupos, permissões e sudo no Ubuntu Server.

## VMs desta aula

Consulte a base comum e use apenas as VMs necessárias para esta prática. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar o grupo dev e os usuários devfrontend e devbackend
2. Ajustar home e permissões de /var/www/html
3. Testar leitura e escrita com cada usuário
4. Configurar sudo restrito
5. Documentar o antes e o depois

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula22"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula22"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Define quem pode fazer o quê no servidor Linux da NexaTech.

**O que fica em aberto:** Habilitar administração remota segura para operar o servidor.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula22.html) e a [atividade](../atividade.md).
