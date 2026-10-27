# Laboratório Virtual - Aula 02: Arquitetura e topologia de rede local

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Diagrama de rede e planilha de endereçamento IP da NexaTech.

---

## Objetivo

Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.

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

1. Desenhar a topologia física e lógica da NexaTech
2. Calcular sub-redes para administração, vendas, suporte, servidores e visitantes
3. Montar a planilha de endereços e reservas
4. Revisar o diagrama com a turma e corrigir inconsistências

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

Transforma o diagnóstico da Aula 01 em uma planta de rede concreta.

**O que fica em aberto:** Uma rede desenhada ainda precisa de protocolos e serviços definidos para funcionar.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula02.html) e a [atividade](../atividade.md).
