# Aula 12 - Serviços web, acesso remoto e administração

**Data sugerida:** 30/11/2026 (segunda-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 4 horas

---

## Objetivo

Publicar serviços web e configurar administração remota segura no Windows Server.

---

## Situação de aprendizagem

A NexaTech precisa de uma intranet simples para comunicados e de uma forma segura de administrar o servidor sem ficar fisicamente na sala. A solução não pode expor RDP ou HTTP sem proteção.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Catálogo de serviços web e checklist de acesso remoto seguro. |
| [`apresentacao_aula12.html`](apresentacao_aula12.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com Vagrant + VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| IIS: sites, bindings, permissões e logs |
| HTTP versus HTTPS e certificados TLS |
| RDP: riscos, restrições e boas práticas |
| VPN e acesso remoto seguro |
| Windows Admin Center e PowerShell Remoting |
| WinRM, firewall e princípio do menor privilégio |
| Autenticação multifator e gestão de credenciais |

### Ferramentas

IIS, Windows Admin Center, PowerShell, OpenSSL ou certificado interno

---

## Prática em laboratório

Intranet publicada e administração remota funcional com restrições.

1. Publicar uma intranet simples no IIS
2. Configurar HTTPS com certificado de teste
3. Restringir RDP por firewall e testar acesso
4. Administrar o servidor pelo Windows Admin Center ou PowerShell Remoting

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Catálogo de serviços web e checklist de acesso remoto seguro.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que expor RDP diretamente à internet é uma das práticas mais perigosas em servidores Windows?

---

## Relação com o projeto

Amplia o servidor de arquivos e domínio para serviços de comunicação e administração.

**O que fica em aberto:** Serviços publicados precisam de rotinas automáticas de verificação e monitoramento.

**Impacto de negócio:** Acesso remoto seguro evita sequestro de servidor e vazamento de dados.


## Próxima aula

**Aula 13 - Automação e monitoramento no Windows Server.** A empresa também precisa de serviços abertos e de baixo custo; entra o Linux.

---

> Voltar para o [índice do Bloco 2](../README.md).
