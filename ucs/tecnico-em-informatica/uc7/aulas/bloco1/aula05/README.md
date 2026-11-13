# Aula 05 - Hardware de servidor, armazenamento e RAID

**Data sugerida:** 19/11/2026 (quinta-feira)
**Bloco:** 1 - Fundamentos e Planejamento
**Carga:** 3 horas

---

## Objetivo

Especificar hardware de servidor e escolher o arranjo de armazenamento adequado, entendendo BIOS/UEFI, discos e RAID.

---

## Situação de aprendizagem

O orçamento permite um servidor físico. A equipe precisa decidir CPU, memória, discos e RAID antes de comprar.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Especificação técnica do servidor com justificativa de CPU, memória, discos e RAID. |
| [`apresentacao_aula05.html`](apresentacao_aula05.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| BIOS/UEFI, POST e CMOS |
| CPU, núcleos, memória ECC e placas de rede |
| Discos SAS, SATA e NVMe |
| RAID 0, 1, 5, 6 e 10 |
| Tolerância a falhas e desempenho |
| Fontes redundantes, hot swap e gerenciamento remoto |

### Ferramentas

Planilha de orçamento, calculadora de RAID, editor de texto

---

## Prática em laboratório

Dimensionamento do servidor físico que futuramente dará lugar às VMs.

1. Comparar duas configurações de servidor com custo e desempenho
2. Calcular a capacidade útil de cada arranjo RAID
3. Escolher discos, memória e fonte com justificativa
4. Montar a planilha de especificação
5. Apresentar a proposta e os riscos

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Especificação técnica do servidor com justificativa de CPU, memória, discos e RAID.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Quando o RAID aumenta a disponibilidade e quando apenas dá uma falsa sensação de segurança?

---

## Relação com o projeto

Define a base física que sustenta a infraestrutura da NexaTech.

**O que fica em aberto:** Com o hardware definido, é preciso virtualizar para aproveitar melhor a capacidade.

**Impacto de negócio:** Dimensionamento correto evita gasto excessivo e gargalos previsíveis.


## Próxima aula

**Aula 06 - Virtualização e criação de VMs no VirtualBox.** Entender o papel do hypervisor e criar, dimensionar e configurar as primeiras máquinas virtuais no VirtualBox.

---

> Voltar para o [índice do Bloco 1](../README.md).
