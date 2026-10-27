# Aula 20 - Monitoramento de servidores e serviços

**Data sugerida:** 11/12/2026 (sexta-feira)  
**Bloco:** 4 - Monitoramento, Nuvem, Governança e Projeto  
**Carga:** 4 horas

---

## Objetivo

Implementar monitoramento de métricas, logs e alertas para os servidores da NexaTech.

---

## Situação de aprendizagem

A direção quer saber, antes dos usuários, quando um serviço cair, o disco encher ou a carga subir. A equipe precisa de um painel e de alertas confiáveis.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Plano de monitoramento com métricas, limiares, dashboards e alertas. |
| `apresentacao_aula20.html` | Slides de conceito (a produzir) |
| `laboratorio_virtual/` | Roteiro prático nas VMs (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Conceitos de monitoramento: disponibilidade, latência, capacidade e SLO |
| SNMP, agentes e coleta de métricas |
| Zabbix, Prometheus e Grafana |
| Monitoramento de Windows e Linux |
| Dashboards e limiares |
| Alertas por e-mail, Telegram ou webhook |
| Centralização de logs |

### Ferramentas

Zabbix ou Prometheus/Grafana, SNMP, agentes, webhook

---

## Prática em laboratório

Painel de monitoramento com hosts Windows e Linux e um alerta funcional.

1. Instalar Zabbix ou Prometheus/Grafana na VM de monitoramento
2. Adicionar o Windows Server e o Linux como hosts monitorados
3. Criar um dashboard com CPU, memória, disco e disponibilidade
4. Configurar um alerta e testar a notificação

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Plano de monitoramento com métricas, limiares, dashboards e alertas.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Um alerta que dispara demais é tão ruim quanto nenhum alerta. Como definir limiares úteis?

---

## Relação com o projeto

Inicia o Bloco 4 transformando o ambiente instalado em um serviço observável.

**O que fica em aberto:** Monitorar detecta falhas; é preciso também recuperar dados e continuar operando.

**Impacto de negócio:** Monitoramento proativo reduz indisponibilidade e custo de suporte.


## Próxima aula

**Aula 21 - Backup, continuidade e resposta a incidentes.** A empresa precisa decidir o que mantém na própria infraestrutura e o que vai para a nuvem.

---

> Voltar para o [índice do Bloco 4](../README.md).
