# Atividade - Aula 24: DHCP no Linux

**Entrega:** Configuração do DHCP Linux comentada e evidência de concessão para o cliente.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Instalar e configurar o DHCP no Ubuntu Server para atender a LAN de laboratório.

## Contexto

A NexaTech já usa DHCP no Windows; a equipe precisa saber operar o mesmo serviço no Linux e entender as diferenças.

## O que deve ser entregue

Configuração do DHCP Linux comentada e evidência de concessão para o cliente.

## Etapas

1. Instalar o isc-dhcp-server no APP01
2. Configurar a rede 192.168.10.0/24
3. Definir faixa, gateway e DNS
4. Iniciar e habilitar o serviço
5. Testar a concessão em CLI01/CLI02 e registrar logs

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Por que dois servidores DHCP na mesma rede podem causar conflitos?

## Critérios de avaliação

| Critério | Peso |
| :--- | :---: |
| Correção técnica | 40% |
| Clareza e organização da documentação | 25% |
| Evidências de execução e testes | 30% |
| Justificativa das decisões e reflexão | 5% |

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
