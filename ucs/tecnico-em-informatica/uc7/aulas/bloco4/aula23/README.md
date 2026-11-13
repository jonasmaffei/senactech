# Aula 23 - SSH e administração remota

**Data sugerida:** 17/12/2026 (quinta-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Habilitar e endurecer o SSH para administrar o servidor Linux remotamente.

---

## Situação de aprendizagem

A equipe precisa administrar o servidor sem ir até o console; acesso remoto seguro é obrigatório.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Checklist de SSH seguro com testes de acesso e bloqueio de root. |
| [`apresentacao_aula23.html`](apresentacao_aula23.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| openssh-server e sshd_config |
| Autenticação por senha e por chave |
| Porta, PermitRootLogin e AllowUsers |
| Geração e cópia de chaves |
| Fail2ban e firewall |
| scp, sftp e boas práticas |

### Ferramentas

Ubuntu, OpenSSH, ssh-keygen, ufw, fail2ban

---

## Prática em laboratório

Acesso remoto seguro ao Ubuntu Server.

1. Instalar o openssh-server
2. Desabilitar login root e senhas vazias
3. Criar par de chaves e copiar para o servidor
4. Testar login e acesso negado
5. Registrar a configuração final

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Checklist de SSH seguro com testes de acesso e bloqueio de root.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que autenticação por chave é mais segura que senha para administração?

---

## Relação com o projeto

Habilita a operação remota segura do servidor Linux.

**O que fica em aberto:** Endurecer o restante do servidor e revisar os serviços expostos.

**Impacto de negócio:** Permite operação remota sem expor credenciais frágeis.


## Próxima aula

**Aula 24 - DHCP no Linux.** Instalar e configurar o DHCP no Ubuntu Server para atender a LAN de laboratório.

---

> Voltar para o [índice do Bloco 4](../README.md).
