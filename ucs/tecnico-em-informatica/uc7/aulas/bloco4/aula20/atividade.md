# Atividade - Aula 20: Instalação e configuração inicial do Ubuntu Server

**Entrega:** Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Instalar o Ubuntu Server sem interface gráfica nas VMs APP01 e DB01, particionar o disco e configurar rede, SSH e atualizações.

## Contexto

A NexaTech vai usar um servidor Linux de baixo custo para DNS, web e monitoramento; a instalação precisa nascer documentada e segura.

## O que deve ser entregue

Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências.

## Etapas

1. Criar a VM com dois adaptadores (NAT e rede interna)
2. Particionar: EFI 200 MB, / 20 GB ext4, /home 25 GB ext4 e swap
3. Instalar sem ambiente gráfico
4. Configurar IP estático 192.168.10.20 e hostname
5. Instalar SSH, atualizar o sistema e configurar o ufw

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Por que separar /home e usar ext4 pode facilitar a operação do servidor?

## Critérios de avaliação

| Critério | Peso |
| :--- | :---: |
| Correção técnica | 40% |
| Clareza e organização da documentação | 25% |
| Evidências de execução e testes | 30% |
| Justificativa das decisões e reflexão | 5% |

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
