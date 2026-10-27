# Aula 02 - Arquitetura e topologia de rede local

**Data sugerida:** 13/11/2026 (sexta-feira)  
**Bloco:** 1 - Fundamentos e Planejamento  
**Carga:** 4 horas

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
| [`apresentacao_aula02.html`](apresentacao_aula02.html) | Slides de conceito (abra no navegador) |
| `laboratorio_virtual/` | Roteiro prático no VirtualBox (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Topologias estrela, barramento, anel e malha |
| Cabeamento Cat5e/Cat6, fibra óptica e patch panel |
| Rack, switch, roteador, firewall e access point |
| VLANs e segmentação por setor |
| IPv4: classes, máscara, CIDR e sub-redes |
| IPv6 e endereçamento dual stack |
| Documentação de rede e plano de IPs |

### Ferramentas

draw.io ou diagrams.net, planilha, calculadora de sub-redes

---

## Prática em laboratório

Projeto de topologia em paper/diagrama; a implementação em VMs ocorre na Aula 06.

1. Desenhar a topologia física e lógica da NexaTech
2. Calcular sub-redes para administração, vendas, suporte, servidores e visitantes
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

Transforma o diagnóstico da Aula 01 em uma planta de rede concreta.

**O que fica em aberto:** Uma rede desenhada ainda precisa de protocolos e serviços definidos para funcionar.

**Impacto de negócio:** Um plano de IP e VLAN bem feito evita conflitos, lentidão e falhas de segurança.


## Próxima aula

**Aula 03 - Protocolos e serviços de rede.** Os protocolos definem o quê; falta decidir em qual hardware e com qual grau de virtualização isso rodará.

---

> Voltar para o [índice do Bloco 1](../README.md).
