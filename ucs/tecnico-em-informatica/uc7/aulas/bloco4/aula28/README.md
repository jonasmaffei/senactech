# Aula 28 - Segurança em servidores Linux

**Data sugerida:** 29/01/2027 (sexta-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.

---

## Situação de aprendizagem

A NexaTech sofreu tentativas de acesso SSH e precisa provar à diretoria que o servidor Linux está protegido. A auditoria vai verificar usuários, firewall, atualizações e logs.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Relatório de auditoria de segurança com antes, depois e justificativas. |
| [`apresentacao_aula28.html`](apresentacao_aula28.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Checklist de hardening e CIS Benchmarks |
| Atualizações e remoção de serviços desnecessários |
| sudo, menor privilégio e contas de serviço |
| SSH seguro: chaves, root desabilitado e fail2ban |
| Firewall com ufw, nftables ou firewalld |
| SELinux e AppArmor |
| TLS, gestão de segredos e auditd |
| Resposta a incidentes e análise de logs |

### Ferramentas

SSH, ufw/nftables, fail2ban, auditd, Lynis

---

## Prática em laboratório

Servidor Linux endurecido e com tentativas de acesso bloqueadas.

1. Endurecer a configuração do SSH no APP01 e no DB01
2. Configurar firewall e fail2ban
3. Auditar usuários, permissões e serviços ativos
4. Comparar o antes e o depois com evidências

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Relatório de auditoria de segurança com antes, depois e justificativas.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Qual controle de segurança teve maior impacto e como ele poderia ser contornado por erro de configuração?

---

## Relação com o projeto

Protege os serviços publicados nas Aulas 24 a 27 e prepara a integração com Windows.

**O que fica em aberto:** Protegido o servidor, ainda é preciso compartilhar arquivos e garantir recuperação.

**Impacto de negócio:** Hardening reduz risco de invasão, multa e parada de operação.


## Próxima aula

**Aula 29 - Backup, continuidade e recuperação de dados.** Definir e testar a rotina de backup, restauração e continuidade dos dados do ambiente.

---

> Voltar para o [índice do Bloco 4](../README.md).
