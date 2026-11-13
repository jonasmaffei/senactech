# Laboratório VirtualBox - Aula 06: Virtualização e criação de VMs no VirtualBox

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Ficha de configuração da VM (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.

---

## Objetivo

Entender o papel do hypervisor e criar, dimensionar e configurar as primeiras máquinas virtuais no VirtualBox.

## VMs desta aula

Consulte a base comum e use apenas as VMs necessárias para esta prática. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar a VM e nomear conforme o padrão da UC
2. Destinar 2 vCPUs e 4 GB de RAM (ajustando ao host)
3. Criar disco virtual de 40 GB e revisar o tipo
4. Adicionar adaptador NAT e adaptador de rede interna
5. Iniciar a VM, testar a rede e tirar o snapshot baseline

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
