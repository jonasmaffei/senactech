# Aula 26 - Servidor web Apache + PHP

**Data sugerida:** 27/01/2027 (quarta-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Publicar a aplicação web em Apache e PHP no Ubuntu Server.

---

## Situação de aprendizagem

A NexaTech quer uma aplicação simples para a intranet no servidor Linux.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Aplicação PHP publicada no APP01 com evidências de acesso pelos clientes. |
| [`apresentacao_aula26.html`](apresentacao_aula26.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Apache e PHP no Ubuntu |
| Virtual host e permissões |
| Estrutura da aplicação |
| Testes com curl e navegador |
| Logs do Apache |
| Boas práticas de publicação |

### Ferramentas

Ubuntu Server, Apache, PHP, curl e navegador

---

## Prática em laboratório

Publicação da aplicação web no APP01.

1. Instalar Apache e PHP no APP01
2. Criar o virtual host da aplicação
3. Publicar a página inicial em PHP
4. Testar pelo navegador do CLI01 e do CLI02
5. Registrar a configuração e as permissões

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Aplicação PHP publicada no APP01 com evidências de acesso pelos clientes.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que separar o servidor web do banco de dados?

---

## Relação com o projeto

Entrega a camada web da aplicação.

**O que fica em aberto:** A aplicação precisa de um banco de dados dedicado.

**Impacto de negócio:** Publica a aplicação sem misturar responsabilidades.


## Próxima aula

**Aula 27 - Banco de dados e integração da aplicação.** Configurar o servidor de banco de dados e integrar a aplicação PHP ao DB01.

---

> Voltar para o [índice do Bloco 4](../README.md).
