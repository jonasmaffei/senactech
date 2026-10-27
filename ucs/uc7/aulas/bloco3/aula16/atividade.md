# Atividade - Aula 16: Serviços de rede no Linux: DNS, DHCP e web

**Entrega:** Configurações comentadas e evidências dos testes dos três serviços.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Configurar DNS, DHCP e servidor web em Linux para atender a rede da NexaTech.

## Contexto

A NexaTech quer um DNS secundário, DHCP para a VLAN de visitantes e uma intranet em Linux. Esses serviços precisam coexistir com o ambiente Windows sem conflitos.

## O que deve ser entregue

Configurações comentadas e evidências dos testes dos três serviços.

## Etapas

1. Configurar zona DNS no BIND e testar com dig
2. Criar escopo DHCP para visitantes
3. Publicar uma intranet simples no Nginx ou Apache
4. Testar resolução, endereçamento e acesso web

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Como evitar que dois servidores DHCP na mesma rede entreguem faixas conflitantes?

## Critérios de avaliação

| Critério | Peso |
| :--- | :---: |
| Correção técnica | 40% |
| Clareza e organização da documentação | 25% |
| Evidências de execução e testes | 20% |
| Justificativa das decisões e reflexão | 15% |

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
