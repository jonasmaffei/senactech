# Aula 06 - Virtualização e criação de VMs no VirtualBox

**Data sugerida:** 23/11/2026 (segunda-feira)
**Bloco:** 1 - Fundamentos e Planejamento
**Carga:** 3 horas

---

## Objetivo

Entender o papel do hypervisor e criar, dimensionar e configurar as VMs dos servidores no VirtualBox.

---

## Situação de aprendizagem

A NexaTech não pode comprar vários servidores. A equipe usa um único computador com VirtualBox para simular a rede cliente/servidor; as VMs de servidor serão criadas nesta aula.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade. |
| [`apresentacao_aula06.html`](apresentacao_aula06.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Virtualização: vários sistemas isolados em um único computador |
| Hypervisor tipo 1 (bare-metal) e tipo 2 (hospedado) |
| VirtualBox como hypervisor tipo 2 |
| Recursos do host: núcleos, RAM, disco e VT-x/AMD-V |
| Redes virtuais: NAT, bridge (ponte) e rede interna |
| Snapshots, clones e alocação de disco |

### Ferramentas

VirtualBox 7+, ISO do sistema e prompt do host

---

## Prática em laboratório

Criação das VMs de servidor e configuração dos recursos do host.

1. Criar as VMs DC01, APP01 e DB01
2. Destinar 2 vCPUs e memória conforme o papel (ajustando ao host)
3. Criar os discos virtuais: 60 GB (DC01) e 50 GB (APP01 e DB01)
4. Adicionar adaptador NAT e adaptador de rede interna em cada VM
5. Iniciar as VMs, testar a rede e tirar o snapshot baseline

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Quando vale a pena virtualizar e quando o recurso do host vira o gargalo?

---

## Relação com o projeto

Cria a plataforma que hospedará todos os servidores da NexaTech.

**O que fica em aberto:** Validar a comunicação entre as VMs e consolidar o plano diretor da rede.

**Impacto de negócio:** Reduz custo de hardware e permite errar sem comprometer o computador real.


## Próxima aula

**Aula 07 - Planejamento, laboratório e plano diretor da rede.** Consolidar o plano de instalação e o plano diretor da rede, com o laboratório VirtualBox pronto e validado.

---

> Voltar para o [índice do Bloco 1](../README.md).
