# Aula 10 - Controlador de domínio e ingresso de clientes

**Data sugerida:** 27/11/2026 (sexta-feira)
**Bloco:** 2 - Windows Server
**Carga:** 3 horas

---

## Objetivo

Promover o Windows Server a controlador de domínio e ingressar o cliente no domínio nexatech.local.

---

## Situação de aprendizagem

O Active Directory foi instalado; agora é preciso criar o domínio e provar que um cliente consegue autenticar.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Evidência de promoção do controlador de domínio e login do CLI01 no domínio. |
| [`apresentacao_aula10.html`](apresentacao_aula10.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Domínio, floresta, árvore e controlador de domínio |
| DNS integrado ao AD e registros SRV |
| Promoção do servidor e reinício |
| Ingresso do cliente e credenciais de domínio |
| Contas de computador e GPO padrão |
| Diagnóstico com dcdiag e nltest |

### Ferramentas

Server Manager, PowerShell, Active Directory Users and Computers

---

## Prática em laboratório

Criação do domínio e ingresso do cliente Windows.

1. Verificar IP e DNS do DC01
2. Instalar a função AD DS e promover nexatech.local
3. Configurar o CLI01 com o DNS do DC01
4. Ingressar o CLI01 e fazer login com usuário do domínio
5. Validar com whoami /fqdn e registrar eventos

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Evidência de promoção do controlador de domínio e login do CLI01 no domínio.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que o DNS é pré-requisito do Active Directory?

---

## Relação com o projeto

Entrega o núcleo de identidade da NexaTech.

**O que fica em aberto:** Organizar setores, usuários e grupos dentro do domínio recém-criado.

**Impacto de negócio:** Centraliza a autenticação e elimina contas locais espalhadas pela empresa.


## Próxima aula

**Aula 11 - Unidades organizacionais, grupos e usuários.** Criar a estrutura organizacional do domínio e gerenciar usuários e grupos por setor.

---

> Voltar para o [índice do Bloco 2](../README.md).
