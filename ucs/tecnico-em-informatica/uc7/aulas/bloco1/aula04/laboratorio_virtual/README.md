# Laboratório VirtualBox - Aula 04: Protocolos e serviços de rede

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Matriz de serviços, protocolos, portas e riscos da NexaTech.

---

## Objetivo

Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.

## VMs desta aula

CLI01 e CLI02 (testes de conectividade, portas e captura de tráfego).

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Testar conectividade com ping, tracert e Test-NetConnection
2. Consultar nomes com nslookup e dig
3. Observar portas abertas com netstat ou ss
4. Capturar uma requisição HTTP no Wireshark e identificar as camadas

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula04"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula04"
```


## Observações

- Se as VMs estiverem apenas na rede interna, faça os testes de conectividade e portas entre CLI01 e CLI02.
- Para consultas DNS externas e captura de HTTP, adicione um adaptador NAT às VMs.

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Dá nome e número aos serviços que a topologia da Aula 03 precisará transportar.

**O que fica em aberto:** Os protocolos definem o quê; falta decidir em qual hardware e com qual grau de virtualização isso rodará.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula04.html) e a [atividade](../atividade.md).
