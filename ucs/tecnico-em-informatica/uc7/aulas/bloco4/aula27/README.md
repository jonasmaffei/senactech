# Aula 27 - Banco de dados e integração da aplicação

**Data sugerida:** 28/01/2027 (quinta-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Configurar o servidor de banco de dados e integrar a aplicação PHP ao DB01.

---

## Situação de aprendizagem

A aplicação está publicada, mas ainda não armazena dados; a NexaTech precisa de um banco dedicado e do fluxo completo funcionando.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Aplicação integrada ao banco funcionando nos clientes, com evidências do fluxo completo. |
| [`apresentacao_aula27.html`](apresentacao_aula27.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| MariaDB/MySQL no Ubuntu |
| Banco, usuário e permissões |
| Conexão PHP + MariaDB |
| Testes de leitura e escrita |
| Validação nos clientes CLI01 e CLI02 |
| Logs do Apache e do banco |

### Ferramentas

DB01, APP01, CLI01, CLI02, MariaDB e PHP

---

## Prática em laboratório

Configuração do banco e integração ponta a ponta.

1. Instalar MariaDB no DB01
2. Criar banco, usuário e tabelas
3. Configurar a conexão da aplicação com o DB01
4. Testar o fluxo no CLI01 e no CLI02
5. Registrar backup inicial e documentar a arquitetura

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Aplicação integrada ao banco funcionando nos clientes, com evidências do fluxo completo.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** O que verificar primeiro quando a aplicação abre, mas não mostra os dados?

---

## Relação com o projeto

Valida o fluxo completo da aplicação da NexaTech.

**O que fica em aberto:** Com a aplicação funcionando, é preciso endurecer a segurança.

**Impacto de negócio:** Entrega a aplicação funcional ponta a ponta.


## Próxima aula

**Aula 28 - Segurança em servidores Linux.** Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.

---

> Voltar para o [índice do Bloco 4](../README.md).
