# Aula 15 - Administração e operação do Linux

**Data sugerida:** 03/12/2026 (quinta-feira)  
**Bloco:** 3 - Linux Server e Segurança  
**Carga:** 4 horas

---

## Objetivo

Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.

---

## Situação de aprendizagem

O servidor Linux já está no ar, mas a equipe precisa de rotinas para saber O que éstá rodando, quanto disco resta, o que falhou e como agendar tarefas sem depender de lembretes.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Runbook de operação do Linux Server. |
| `apresentacao_aula15.html` | Slides de conceito (a produzir) |
| `laboratorio_virtual/` | Roteiro prático nas VMs (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| systemd: units, enable, start, status e journalctl |
| Processos: ps, top, htop e kill |
| Disco: df, du, lsblk, mount e LVM |
| Permissões: chmod, chown e umask |
| Logs em /var/log e logrotate |
| cron e systemd timers |
| Chaves SSH e sessões persistentes com tmux/screen |

### Ferramentas

systemd, journalctl, htop, cron, tmux, rsync

---

## Prática em laboratório

Rotinas de operação e um serviço próprio rodando sob systemd.

1. Criar um serviço systemd simples
2. Agendar um backup com systemd timer
3. Analisar logs e identificar um erro
4. Verificar uso de disco e permissões de arquivos

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Runbook de operação do Linux Server.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Qual a diferença prática entre cron e systemd timer para uma tarefa que precisa de log e reinício automático?

---

## Relação com o projeto

Transforma a instalação da Aula 14 em operação repetível e auditável.

**O que fica em aberto:** Com a operação sob controle, é hora de publicar os serviços de rede no Linux.

**Impacto de negócio:** Rotinas documentadas reduzem dependência de pessoas e tempo de recuperação.


## Próxima aula

**Aula 16 - Serviços de rede no Linux: DNS, DHCP e web.** Serviços publicados aumentam a superfície de ataque e exigem hardening.

---

> Voltar para o [índice do Bloco 3](../README.md).
