# Atividade - Aula 25: DNS no Linux

**Entrega:** Zonas BIND9 configuradas e evidências de resolução direta e reversa.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Instalar e configurar o BIND9 no Ubuntu Server para resolver nomes da rede.

## Contexto

O DNS do Windows atende o domínio; a NexaTech quer uma alternativa Linux para entender e comparar a configuração.

## O que deve ser entregue

Zonas BIND9 configuradas e evidências de resolução direta e reversa.

## Etapas

1. Instalar o bind9 no APP01
2. Configurar zonas para senactech.edu.br
3. Criar a zona reversa
4. Definir forwarders 8.8.8.8 e 8.8.4.4
5. Validar com named-checkzone e testar com dig

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Quais cuidados são necessários para não conflitar com o DNS do domínio Windows?

## Critérios de avaliação

| Critério | Peso |
| :--- | :---: |
| Correção técnica | 40% |
| Clareza e organização da documentação | 25% |
| Evidências de execução e testes | 30% |
| Justificativa das decisões e reflexão | 5% |

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
