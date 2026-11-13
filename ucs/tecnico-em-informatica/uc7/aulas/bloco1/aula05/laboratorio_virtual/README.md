# Laboratório VirtualBox - Aula 05: Hardware de servidor, armazenamento e RAID

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Especificação técnica do servidor com justificativa de CPU, memória, discos e RAID.

---

## Objetivo

Especificar hardware de servidor e escolher o arranjo de armazenamento adequado, entendendo BIOS/UEFI, discos e RAID.

## VMs desta aula

Nenhuma VM é obrigatória nesta aula. O foco é a especificação do servidor físico e do arranjo de armazenamento.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Comparar duas configurações de servidor com custo e desempenho
2. Calcular a capacidade útil de cada arranjo RAID
3. Escolher discos, memória e fonte com justificativa
4. Montar a planilha de especificação
5. Apresentar a proposta e os riscos

## Testes e evidências

- Registre a comparação de configurações e os cálculos de RAID.
- Anote a capacidade útil e a tolerância a falhas de cada arranjo.
- Justifique a escolha final.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula05"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula05"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Define a base física que sustenta a infraestrutura da NexaTech.

**O que fica em aberto:** Com o hardware definido, é preciso virtualizar para aproveitar melhor a capacidade.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula05.html) e a [atividade](../atividade.md).
