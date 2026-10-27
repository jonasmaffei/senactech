# Laboratório Virtual - Aula 01: O servidor na rede local e a UC7

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Diagnóstico inicial de uma página com os serviços que precisam ser centralizados.

---

## Objetivo

Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e o cenário que conduzirá a UC7.

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

1. Inventariar os recursos e as dores da NexaTech
2. Classificar os serviços entre essenciais, importantes e opcionais
3. Montar um mapa inicial de serviços e responsáveis
4. Definir os papéis da equipe e o fluxo de documentação

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

Abre a UC e estabelece o problema de negócio que será resolvido ao longo das 24 aulas.

**O que fica em aberto:** Quais serviços serão necessários e como eles se conectam fisicamente?

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula01.html) e a [atividade](../atividade.md).
