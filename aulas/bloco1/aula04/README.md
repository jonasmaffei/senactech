# Aula 04 - Hardware de servidor, armazenamento e virtualização

**Data sugerida:** 17/11/2026 (terça-feira)  
**Bloco:** 1 - Fundamentos e Planejamento  
**Carga:** 4 horas

---

## Objetivo

Especificar hardware de servidor e projetar um laboratório virtualizado compatível com o projeto.

---

## Situação de aprendizagem

O orçamento permite um servidor físico e alguns computadores de laboratório. A equipe precisa decidir como hospedar Windows Server, Linux e monitoramento sem comprar três máquinas.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Especificação técnica do servidor e das VMs, com justificativa de custo e capacidade. |
| [`apresentacao_aula04.html`](apresentacao_aula04.html) | Slides de conceito (abra no navegador) |
| `laboratorio_virtual/` | Roteiro prático no VirtualBox (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| CPU, núcleos, memória ECC e placas de rede |
| Discos SAS, SATA e NVMe |
| RAID 0, 1, 5 e 10 e tolerância a falhas |
| Fontes redundantes, hot swap e gerenciamento remoto |
| Hypervisors tipo 1 e tipo 2: Hyper-V, Proxmox, VMware e VirtualBox |
| Redes virtuais NAT, bridge e interna |
| Snapshots, clones e planejamento de capacidade |

### Ferramentas

VirtualBox ou Hyper-V, planilha de orçamento

---

## Prática em laboratório

Criação das máquinas virtuais que serão usadas no restante da UC.

1. Comparar duas configurações de servidor com custo e desempenho
2. Criar as VMs de Windows Server e Ubuntu Server no laboratório
3. Configurar a rede interna do laboratório
4. Registrar uma linha de base com snapshot antes das próximas aulas

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Especificação técnica do servidor e das VMs, com justificativa de custo e capacidade.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Quando a virtualização reduz custo de verdade e quando ela apenas concentra risco em uma única máquina?

---

## Relação com o projeto

Escolhe a plataforma física e virtual que sustentará todas as instalações seguintes.

**O que fica em aberto:** Com o laboratório pronto, é preciso um plano de implantação para não configurar tudo de forma desordenada.

**Impacto de negócio:** Dimensionamento correto evita gasto excessivo e gargalos previsíveis.


## Próxima aula

**Aula 05 - Planejamento da instalação e documentação.** O plano está no papel; falta montar o laboratório e validar a rede de ponta a ponta.

---

> Voltar para o [índice do Bloco 1](../README.md).
