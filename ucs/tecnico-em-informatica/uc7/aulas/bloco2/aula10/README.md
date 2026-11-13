# Aula 10 - Controlador de domínio e ingresso de clientes

**Data sugerida:** 27/11/2026 (sexta-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 3 horas

---

## Objetivo

Validar o controlador de domínio e ingressar os clientes Windows 10 no domínio nexatech.local.

---

## Situação de aprendizagem

O domínio existe; agora os clientes CLI01 e CLI02 precisam autenticar nele.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Evidência de login dos clientes CLI01 e CLI02 no domínio. |
| [`apresentacao_aula10.html`](apresentacao_aula10.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Cliente com DNS apontando para o DC01 |
| Ingresso no domínio e conta de computador |
| Login com usuário do domínio |
| GPO padrão do domínio |
| Diagnóstico com nltest e whoami /fqdn |
| Boas práticas de contas de computador |

### Ferramentas

Windows Server, Windows 10, Active Directory Users and Computers, nltest

---

## Prática em laboratório

Ingresso dos clientes Windows 10 no domínio.

1. Verificar IP e DNS do DC01
2. Configurar o CLI01 e o CLI02 com o DNS do DC01
3. Ingressar as duas VMs no domínio nexatech.local
4. Fazer login com usuário do domínio
5. Validar com whoami /fqdn e registrar eventos

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Evidência de login dos clientes CLI01 e CLI02 no domínio.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** O que acontece se o cliente não apontar para o DNS do controlador de domínio?

---

## Relação com o projeto

Completa a integração dos clientes ao domínio da NexaTech.

**O que fica em aberto:** Com os clientes no domínio, é preciso organizar setores, grupos, usuários e permissões.

**Impacto de negócio:** Permite login centralizado e prepara os clientes para receber políticas.


## Próxima aula

**Aula 11 - Unidades organizacionais, grupos e usuários.** Com os clientes no domínio, é hora de organizar as contas e os setores.

---

> Voltar para o [índice do Bloco 2](../README.md).
