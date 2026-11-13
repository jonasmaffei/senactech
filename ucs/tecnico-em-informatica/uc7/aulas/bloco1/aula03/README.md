# Aula 03 - Arquitetura e topologia de rede local

**Data sugerida:** 17/11/2026 (terça-feira)
**Bloco:** 1 - Fundamentos e Planejamento
**Carga:** 3 horas

---

## Objetivo

Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.

---

## Situação de aprendizagem

A empresa ocupa dois andares, tem 45 estações, impressoras de rede, Wi-Fi para visitantes e vai receber servidores. Antes de comprar equipamentos, é preciso desenhar a topologia e definir o plano de endereços.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Diagrama de rede e planilha de endereçamento IP da NexaTech. |
| [`apresentacao_aula03.html`](apresentacao_aula03.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Topologias estrela, barramento, anel e malha |
| Cabeamento Cat5e/Cat6, fibra óptica e patch panel |
| Rack, switch, roteador, firewall e access point |
| VLANs e segmentação por setor |
| IPv4: endereço, máscara e notação CIDR |
| IPv6 e endereçamento dual stack |
| Documentação de rede e plano de IPs |

### Ferramentas

draw.io ou diagrams.net, planilha

---

## Prática em laboratório

Projeto de topologia em paper/diagrama; a implementação em VMs ocorre nas Aulas 01 e 06.

1. Desenhar a topologia física e lógica da NexaTech
2. Definir a distribuição de IPs por setor
3. Montar a planilha de endereços e reservas
4. Revisar o diagrama com a turma e corrigir inconsistências

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Diagrama de rede e planilha de endereçamento IP da NexaTech.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Qual decisão de topologia ou segmentação reduz mais o risco de um problema em um setor afetar toda a empresa?

---

## Relação com o projeto

Transforma o diagnóstico da Aula 02 em uma planta de rede concreta.

**O que fica em aberto:** Uma rede desenhada ainda precisa de protocolos e serviços definidos para funcionar.

**Impacto de negócio:** Um plano de IP e VLAN bem feito evita conflitos, lentidão e falhas de segurança.


## Próxima aula

**Aula 04 - Protocolos e serviços de rede.** Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.

---

> Voltar para o [índice do Bloco 1](../README.md).
