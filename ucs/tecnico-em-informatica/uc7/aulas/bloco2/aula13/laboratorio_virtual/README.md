# Laboratório VirtualBox - Aula 13: DHCP no Windows Server

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano de DHCP com escopo, exclusões, reservas e evidências de concessão.

---

## Objetivo

Configurar escopos, reservas e opções DHCP no Windows Server para entregar endereçamento à rede.

## VMs desta aula

DC01 e CLI01/CLI02 (teste de concessão DHCP). Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar o escopo 192.168.10.100-200
2. Definir gateway e DNS nas opções
3. Reservar IPs para servidores e impressoras
4. Autorizar e ativar o escopo
5. Testar a concessão em um cliente

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula13"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula13"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Completa o serviço de endereçamento da NexaTech.

**O que fica em aberto:** Controlar o acesso aos dados compartilhados com permissões adequadas.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula13.html) e a [atividade](../atividade.md).
