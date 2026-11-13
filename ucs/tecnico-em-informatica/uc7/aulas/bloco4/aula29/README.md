# Aula 29 - Backup, continuidade e recuperação de dados

**Data sugerida:** 01/02/2027 (segunda-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Definir e testar a rotina de backup, restauração e continuidade dos dados do ambiente.

---

## Situação de aprendizagem

A NexaTech já compartilha arquivos no Windows Server; agora precisa garantir que esses dados sobrevivam a exclusões acidentais e falhas.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Plano de backup e continuidade com evidências de restauração e RPO/RTO. |
| [`apresentacao_aula29.html`](apresentacao_aula29.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Regra 3-2-1 e política de retenção |
| Backup completo, incremental e diferencial |
| rsync, tar e systemd timer |
| RPO, RTO e continuidade de negócio |
| Testes de restauração |
| Cópia dos dados do Windows Server e do Linux |

### Ferramentas

rsync, tar, systemd timer e Windows Server

---

## Prática em laboratório

Rotina de backup e restauração no ambiente misto.

1. Definir o que será copiado (pastas compartilhadas no Windows e dados do Linux)
2. Criar uma rotina de backup com rsync
3. Agendar a rotina com systemd timer
4. Simular exclusão de arquivo e restaurar a versão anterior
5. Definir RPO/RTO e documentar a retenção

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Plano de backup e continuidade com evidências de restauração e RPO/RTO.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Se o backup nunca foi testado, ele realmente existe?

---

## Relação com o projeto

Protege os dados compartilhados no Windows Server e os serviços Linux.

**O que fica em aberto:** Validar o ambiente integrado e diagnosticar falhas de ponta a ponta.

**Impacto de negócio:** Reduz perda de dados e tempo de recuperação em caso de falha.


## Próxima aula

**Aula 30 - Monitoramento, automação e troubleshooting.** Monitorar servidores, automatizar rotinas e diagnosticar falhas no ambiente integrado.

---

> Voltar para o [índice do Bloco 4](../README.md).
