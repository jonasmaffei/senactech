# Aula 11 - Unidades organizacionais, grupos e usuários

**Data sugerida:** 30/11/2026 (segunda-feira)
**Bloco:** 2 - Windows Server
**Carga:** 3 horas

---

## Objetivo

Criar a estrutura organizacional do domínio e gerenciar usuários e grupos por setor.

---

## Situação de aprendizagem

A NexaTech precisa refletir seus setores no Active Directory e aplicar permissões por grupo, não por pessoa.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Estrutura de OUs, grupos e usuários documentada, com evidência de logins. |
| [`apresentacao_aula11.html`](apresentacao_aula11.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Unidades organizacionais e delegação |
| Usuários, grupos de segurança e grupos de distribuição |
| UPN, senha e políticas de conta |
| Grupos globais, locais de domínio e universais |
| Modelo AGDLP |
| Menor privilégio e contas administrativas |

### Ferramentas

Active Directory Users and Computers, PowerShell

---

## Prática em laboratório

Modelagem dos setores e das contas da NexaTech.

1. Criar as OUs ADM, RH, PROD e TI
2. Criar grupos de segurança por setor
3. Criar usuários e adicionar aos grupos
4. Testar login de um usuário comum
5. Documentar a estrutura criada

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Estrutura de OUs, grupos e usuários documentada, com evidência de logins.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que é melhor conceder permissão a grupos do que a usuários individuais?

---

## Relação com o projeto

Organiza a identidade e as permissões da NexaTech.

**O que fica em aberto:** Publicar serviços de rede que dependem do domínio: DNS e DHCP.

**Impacto de negócio:** Permite aplicar regras por setor e reduz o esforço de administração.


## Próxima aula

**Aula 12 - DNS no Windows Server.** Configurar zonas DNS integradas ao Active Directory para resolver nomes dos servidores e clientes.

---

> Voltar para o [índice do Bloco 2](../README.md).
