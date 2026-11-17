# Atividade - Aula 06: Laboratório de servidores - dimensionamento e criação das VMs

**Entrega:** Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Criar e dimensionar as VMs DC01, APP01 e DB01 no VirtualBox, preparando a base para a instalação dos serviços.

## Contexto

O hardware e o RAID já foram definidos. Agora a equipe precisa transformar a especificação em VMs com recursos compatíveis com o papel de cada servidor.

## Dor e solução

**Dor:** A especificação do servidor está no papel, mas ainda não existe ambiente virtual para instalar os serviços.  
**Impacto:** Sem as VMs dimensionadas, as aulas de Windows Server e Linux não têm onde instalar os serviços.  
**Exemplo de solução:** Criar DC01, APP01 e DB01 no VirtualBox com vCPU, RAM, discos e rede interna conforme o papel de cada servidor.  
**Prioridade:** Essencial

## O que deve ser entregue

Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.

## Etapas

1. Criar as VMs DC01, APP01 e DB01
2. Destinar 2 vCPUs e memória conforme o papel (ajustando ao host)
3. Criar os discos virtuais: 60 GB (DC01) e 50 GB (APP01 e DB01)
4. Adicionar adaptador NAT e adaptador de rede interna `rede-nexatech` em cada VM
5. Iniciar as VMs, testar a rede e tirar o snapshot baseline
6. Documentar nome, papel, vCPU, RAM, disco e redes de cada VM

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Quando vale a pena virtualizar e quando o recurso do host vira o gargalo?

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
