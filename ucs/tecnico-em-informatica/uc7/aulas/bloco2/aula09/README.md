# Aula 09 - Active Directory Domain Services

**Data sugerida:** 26/11/2026 (quinta-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 3 horas

---

## Objetivo

Instalar a função AD DS e promover o Windows Server a controlador do domínio nexatech.local.

---

## Situação de aprendizagem

A NexaTech quer centralizar a autenticação; o primeiro passo é criar o domínio e o controlador de domínio.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Domínio nexatech.local criado, com evidência de promoção e verificação do controlador. |
| [`apresentacao_aula09.html`](apresentacao_aula09.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Domínio, floresta, árvore e controlador de domínio |
| LDAP, Kerberos e dependência do DNS |
| Instalação da função AD DS |
| Promoção do servidor a controlador |
| Verificação com dcdiag e Get-ADDomain |
| Boas práticas de DNS no domínio |

### Ferramentas

Windows Server, Server Manager, PowerShell e dcdiag

---

## Prática em laboratório

Criação do domínio nexatech.local no DC01.

1. Verificar IP e DNS do DC01
2. Instalar a função AD DS
3. Promover o servidor a controlador do domínio nexatech.local
4. Reiniciar e validar com dcdiag
5. Registrar evidências da promoção

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Domínio nexatech.local criado, com evidência de promoção e verificação do controlador.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que o DNS é pré-requisito para o Active Directory funcionar?

---

## Relação com o projeto

Entrega o domínio que sustentará a identidade da NexaTech.

**O que fica em aberto:** Com o domínio criado, os clientes Windows 10 precisam ingressar nele.

**Impacto de negócio:** Centraliza a autenticação e cria a base para usuários, grupos e políticas.


## Próxima aula

**Aula 10 - Controlador de domínio e ingresso de clientes.** Com o domínio no ar, é hora de ingressar os clientes Windows 10.

---

> Voltar para o [índice do Bloco 2](../README.md).
