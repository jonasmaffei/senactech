# Atividade - Aula 10: Controlador de domínio e ingresso de clientes

**Entrega:** Evidência de promoção do controlador de domínio e login do CLI01 no domínio.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Promover o Windows Server a controlador de domínio e ingressar o cliente no domínio nexatech.local.

## Contexto

O Active Directory foi instalado; agora é preciso criar o domínio e provar que um cliente consegue autenticar.

## O que deve ser entregue

Evidência de promoção do controlador de domínio e login do CLI01 no domínio.

## Etapas

1. Verificar IP e DNS do DC01
2. Instalar a função AD DS e promover nexatech.local
3. Configurar o CLI01 com o DNS do DC01
4. Ingressar o CLI01 e fazer login com usuário do domínio
5. Validar com whoami /fqdn e registrar eventos

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Por que o DNS é pré-requisito do Active Directory?

## Critérios de avaliação

| Critério | Peso |
| :--- | :---: |
| Correção técnica | 40% |
| Clareza e organização da documentação | 25% |
| Evidências de execução e testes | 30% |
| Justificativa das decisões e reflexão | 5% |

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
