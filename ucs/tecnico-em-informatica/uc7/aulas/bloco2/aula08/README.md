# Aula 08 - Active Directory Domain Services

**Data sugerida:** 24/11/2026 (terça-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 4 horas

---

## Objetivo

Configurar o Active Directory, criar a estrutura organizacional e gerenciar usuários e grupos.

---

## Situação de aprendizagem

A NexaTech quer centralizar o login e as permissões. Hoje cada computador tem contas locais e ninguém sabe quem acessou o quê. O domínio precisa refletir os setores e as regras da empresa.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Estrutura do Active Directory documentada e teste de login no domínio. |
| [`apresentacao_aula08.html`](apresentacao_aula08.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com Vagrant + VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Conceitos de domínio, floresta, árvore e controlador de domínio |
| LDAP, Kerberos e dependência do DNS |
| Promoção do servidor a controlador de domínio |
| Unidades organizacionais por setor |
| Usuários, grupos, UPN e políticas de senha |
| Ingresso de clientes no domínio |
| Boas práticas de separação de privilégios |

### Ferramentas

Windows Server, Active Directory Users and Computers, RSAT

---

## Prática em laboratório

Domínio nexatech.local ativo com estrutura de OUs e usuários.

1. Promover o servidor a controlador do domínio nexatech.local
2. Criar OUs para Administração, Vendas, Suporte e Servidores
3. Criar usuários e grupos de segurança
4. Ingressar um cliente Windows no domínio e testar login

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Estrutura do Active Directory documentada e teste de login no domínio.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que criar grupos de segurança em vez de dar permissão diretamente a cada usuário?

---

## Relação com o projeto

Transforma o servidor instalado na Aula 07 em uma autoridade de autenticação.

**O que fica em aberto:** O domínio precisa de DNS confiável e de endereçamento automático para os clientes.

**Impacto de negócio:** Autenticação centralizada reduz contas soltas e facilita desligamentos e auditorias.


## Próxima aula

**Aula 09 - DNS e DHCP no Windows Server.** Com nomes e endereços resolvidos, os usuários precisam de pastas e permissões.

---

> Voltar para o [índice do Bloco 2](../README.md).
