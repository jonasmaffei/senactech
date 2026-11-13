# Atividade - Aula 12: DNS no Windows Server

**Entrega:** Plano de DNS com zonas direta e reversa, registros e evidências de resolução.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Configurar zonas DNS integradas ao Active Directory para resolver nomes dos servidores e clientes.

## Contexto

Os computadores da NexaTech precisam encontrar o controlador de domínio e os serviços pelo nome; sem DNS confiável, o domínio falha de forma intermitente.

## O que deve ser entregue

Plano de DNS com zonas direta e reversa, registros e evidências de resolução.

## Etapas

1. Criar a zona direta nexatech.local
2. Criar a zona reversa da faixa 192.168.10.0/24
3. Cadastrar registros de servidores e apelidos
4. Configurar encaminhadores externos
5. Testar resolução direta e reversa no cliente

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Por que uma zona reversa é importante para diagnóstico e auditoria?

## Critérios de avaliação

| Critério | Peso |
| :--- | :---: |
| Correção técnica | 40% |
| Clareza e organização da documentação | 25% |
| Evidências de execução e testes | 30% |
| Justificativa das decisões e reflexão | 5% |

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
