# Aula 22 - Usuários, grupos e permissões no Linux

**Data sugerida:** 16/12/2026 (quarta-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Gerenciar usuários, grupos, permissões e sudo no Ubuntu Server.

---

## Situação de aprendizagem

O servidor Linux terá vários serviços; é preciso separar contas e limitar acessos.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Relatório de contas, grupos e permissões, com testes de sudo. |
| [`apresentacao_aula22.html`](apresentacao_aula22.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| useradd/adduser, passwd e grupos |
| chmod simbólico e octal |
| chown, chgrp e umask |
| sudo e menor privilégio |
| /etc/passwd, /etc/group e /etc/shadow |
| Permissões de dono, grupo e outros |

### Ferramentas

Ubuntu, useradd, groupadd, chmod, chown, sudo

---

## Prática em laboratório

Separação de contas e permissões no servidor Linux.

1. Criar o grupo dev e os usuários devfrontend e devbackend
2. Ajustar home e permissões de /var/www/html
3. Testar leitura e escrita com cada usuário
4. Configurar sudo restrito
5. Documentar o antes e o depois

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Relatório de contas, grupos e permissões, com testes de sudo.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que conceder sudo total a todos os usuários é um risco?

---

## Relação com o projeto

Define quem pode fazer o quê no servidor Linux da NexaTech.

**O que fica em aberto:** Habilitar administração remota segura para operar o servidor.

**Impacto de negócio:** Reduz o impacto de erros e de contas comprometidas.


## Próxima aula

**Aula 23 - SSH e administração remota.** Habilitar e endurecer o SSH para administrar o servidor Linux remotamente.

---

> Voltar para o [índice do Bloco 4](../README.md).
