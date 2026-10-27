# Laboratório Virtual - Aula 03: Protocolos e serviços de rede

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Matriz de serviços, protocolos, portas e riscos da NexaTech.

---

## Objetivo

Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.

## VMs desta aula

Nenhuma VM é obrigatória nesta aula. O foco é planejamento e documentação no host.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

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

```bash
cd laboratorio_virtual
vagrant status
# As VMs desta aula ainda nao sao necessarias.
```

## Observações

- As VMs ainda não são necessárias. Produza o artefato da aula e guarde-o na pasta do projeto integrador.

## Relação com o projeto

Dá nome e número aos serviços que a topologia da Aula 02 precisará transportar.

**O que fica em aberto:** Os protocolos definem o quê; falta decidir em qual hardware e com qual grau de virtualização isso rodará.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula03.html) e a [atividade](../atividade.md).
