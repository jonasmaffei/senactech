# Atividade - Aula 06: Virtualização e criação de VMs no VirtualBox

**Entrega:** Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Entender o papel do hypervisor e criar, dimensionar e configurar as VMs dos servidores no VirtualBox.

## Contexto

A NexaTech não pode comprar vários servidores. A equipe usa um único computador com VirtualBox para simular a rede cliente/servidor; as VMs de servidor serão criadas nesta aula.

## O que deve ser entregue

Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.

## Etapas

1. Criar as VMs DC01, APP01 e DB01
2. Destinar 2 vCPUs e memória conforme o papel (ajustando ao host)
3. Criar os discos virtuais: 60 GB (DC01) e 50 GB (APP01 e DB01)
4. Adicionar adaptador NAT e adaptador de rede interna em cada VM
5. Iniciar as VMs, testar a rede e tirar o snapshot baseline

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Quando vale a pena virtualizar e quando o recurso do host vira o gargalo?

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
