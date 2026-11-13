# Aula 06 - Virtualização e criação de VMs no VirtualBox

**Data sugerida:** 23/11/2026 (segunda-feira)
**Bloco:** 1 - Fundamentos e Planejamento
**Carga:** 3 horas

---

## Objetivo

Entender o papel do hypervisor e criar, dimensionar e configurar as primeiras máquinas virtuais no VirtualBox.

---

## Situação de aprendizagem

A NexaTech não pode comprar quatro servidores. A equipe vai usar um único computador com VirtualBox para simular a rede cliente/servidor, começando pela primeira máquina virtual.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Ficha de configuração da VM (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade. |
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

Criação da primeira VM e configuração dos recursos do host.

1. Criar a VM e nomear conforme o padrão da UC
2. Destinar 2 vCPUs e 4 GB de RAM (ajustando ao host)
3. Criar disco virtual de 40 GB e revisar o tipo
4. Adicionar adaptador NAT e adaptador de rede interna
5. Iniciar a VM, testar a rede e tirar o snapshot baseline

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Ficha de configuração da VM (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Quando vale a pena virtualizar e quando o recurso do host vira o gargalo?

---

## Relação com o projeto

Cria a plataforma que hospedará todos os servidores da NexaTech.

**O que fica em aberto:** Definir quantas VMs o host suporta e como a rede interna será montada.

**Impacto de negócio:** Reduz custo de hardware e permite errar sem comprometer o computador real.


## Próxima aula

**Aula 07 - Planejamento, laboratório e plano diretor da rede.** Consolidar o plano de instalação e o plano diretor da rede, com o laboratório VirtualBox pronto e validado.

---

> Voltar para o [índice do Bloco 1](../README.md).
