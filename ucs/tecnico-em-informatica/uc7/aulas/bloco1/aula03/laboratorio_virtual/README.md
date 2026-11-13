# Laboratório VirtualBox - Aula 03: Arquitetura e topologia de rede local

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Diagrama de rede e planilha de endereçamento IP da NexaTech.

---

## Objetivo

Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.

## VMs desta aula

Nenhuma VM é obrigatória nesta aula. O foco é planejamento e documentação no host.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se o computador está conectado à rede local.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Desenhar a topologia física e lógica da NexaTech
2. Definir a distribuição de IPs por setor
3. Montar a planilha de endereços e reservas
4. Revisar o diagrama com a turma e corrigir inconsistências

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula03"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula03"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Transforma o diagnóstico da Aula 02 em uma planta de rede concreta.

**O que fica em aberto:** Uma rede desenhada ainda precisa de protocolos e serviços definidos para funcionar.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula03.html) e a [atividade](../atividade.md).
