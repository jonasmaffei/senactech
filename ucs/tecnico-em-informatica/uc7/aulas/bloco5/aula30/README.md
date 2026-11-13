# Aula 30 - Monitoramento, automação e troubleshooting

**Data sugerida:** 02/02/2027 (terça-feira)
**Bloco:** 5 - Operação, Monitoramento e Projeto
**Carga:** 3 horas

---

## Objetivo

Monitorar servidores, automatizar rotinas e diagnosticar falhas no ambiente integrado.

---

## Situação de aprendizagem

A equipe precisa saber antes dos usuários quando um serviço cair e ter método para diagnosticar problemas de rede, DNS, aplicação e banco.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Plano de monitoramento, script de automação e registro de troubleshooting. |
| [`apresentacao_aula30.html`](apresentacao_aula30.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Métricas, logs, SNMP e SLO |
| Zabbix, Prometheus e Grafana |
| Fluxo DHCP -> DNS -> aplicação -> banco |
| PowerShell, Task Scheduler e Event Viewer |
| systemd timers e cron |
| Método: sintoma, hipótese, teste e solução |

### Ferramentas

APP01, DC01, DB01, Zabbix/Prometheus, PowerShell, systemd e logs

---

## Prática em laboratório

Monitoramento, automação e diagnóstico do ambiente.

1. Instalar o monitoramento no APP01
2. Adicionar DC01, APP01 e DB01 como hosts
3. Criar dashboard e alerta
4. Criar script/timer de verificação
5. Resolver cenários de falha e registrar o diagnóstico

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Plano de monitoramento, script de automação e registro de troubleshooting.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Como o registro do diagnóstico ajuda a equipe a não repetir o mesmo erro?

---

## Relação com o projeto

Torna a operação observável e diagnosticável.

**O que fica em aberto:** Organizar processos, riscos e controles de governança.

**Impacto de negócio:** Reduz tempo de reação e de parada.


## Próxima aula

**Aula 31 - Governança de TI, segurança e certificações.** Aplicar conceitos de governança e segurança na administração dos servidores e planejar certificações.

---

> Voltar para o [índice do Bloco 5](../README.md).
