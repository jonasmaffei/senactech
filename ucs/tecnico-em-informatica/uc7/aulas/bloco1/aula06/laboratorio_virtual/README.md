# Laboratório VirtualBox - Aula 06: Virtualização e criação de VMs no VirtualBox

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.

---

## Objetivo

Entender o papel do hypervisor e criar, dimensionar e configurar as VMs dos servidores no VirtualBox.

## VMs desta aula

DC01, APP01 e DB01 (as VMs clientes CLI01/CLI02 foram criadas na Aula 01). Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar as VMs DC01, APP01 e DB01
2. Destinar 2 vCPUs e memória conforme o papel (ajustando ao host)
3. Criar os discos virtuais: 60 GB (DC01) e 50 GB (APP01 e DB01)
4. Adicionar adaptador NAT e adaptador de rede interna em cada VM
5. Iniciar as VMs, testar a rede e tirar o snapshot baseline

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula06"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula06"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Cria a plataforma que hospedará todos os servidores da NexaTech.

**O que fica em aberto:** Definir quantas VMs o host suporta e como a rede interna será montada.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula06.html) e a [atividade](../atividade.md).
