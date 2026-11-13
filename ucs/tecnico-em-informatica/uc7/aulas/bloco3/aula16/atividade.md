# Atividade - Aula 16: Roteamento e NAT

**Entrega:** Configuração de NAT aplicada e teste de internet a partir do cliente.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Entender como um servidor ou firewall encaminha pacotes entre redes e aplica NAT para liberar internet.

## Contexto

A rede interna não tem acesso à internet; é preciso configurar o gateway e o NAT antes de instalar o firewall dedicado.

## O que deve ser entregue

Configuração de NAT aplicada e teste de internet a partir do cliente.

## Etapas

1. Habilitar ip_forward no Linux ou RRAS no Windows
2. Configurar NAT de saída na interface WAN
3. Ajustar o gateway no cliente
4. Testar internet e registrar as regras
5. Tirar snapshot da configuração

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Qual a diferença entre dar internet à LAN e expor serviços da LAN para a internet?

## Critérios de avaliação

| Critério | Peso |
| :--- | :---: |
| Correção técnica | 40% |
| Clareza e organização da documentação | 25% |
| Evidências de execução e testes | 30% |
| Justificativa das decisões e reflexão | 5% |

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
