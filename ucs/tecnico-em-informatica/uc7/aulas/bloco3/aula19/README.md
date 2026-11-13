# Aula 19 - Serviços web (IIS), acesso remoto e administração

**Data sugerida:** 11/12/2026 (sexta-feira)
**Bloco:** 3 - Redes, Roteamento e Firewall
**Carga:** 3 horas

---

## Objetivo

Publicar serviços web no Windows Server e configurar administração remota segura.

---

## Situação de aprendizagem

Além do servidor Linux, a NexaTech quer comparar a publicação web no Windows e precisa administrar o servidor sem expor RDP ou HTTP sem proteção.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Catálogo de serviços web no IIS + checklist de acesso remoto seguro. |
| [`apresentacao_aula19.html`](apresentacao_aula19.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| IIS: sites, bindings, permissões e logs |
| HTTP, HTTPS e certificados TLS |
| RDP: riscos e boas práticas |
| VPN e acesso remoto seguro |
| Windows Admin Center e PowerShell Remoting |
| WinRM, firewall e menor privilégio |

### Ferramentas

IIS, Windows Admin Center, PowerShell e pfSense

---

## Prática em laboratório

Publicação web e administração remota no Windows Server.

1. Publicar uma intranet simples no IIS
2. Configurar HTTPS com certificado de teste
3. Restringir o RDP por firewall
4. Administrar por Windows Admin Center ou WinRM
5. Documentar portas e acessos

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Catálogo de serviços web no IIS + checklist de acesso remoto seguro.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Quais diferenças de operação e segurança existem entre publicar no IIS e no Apache?

---

## Relação com o projeto

Completa o espelhamento dos serviços web entre Windows e Linux.

**O que fica em aberto:** Com os serviços web e o acesso remoto entendidos, começa o servidor Linux da aplicação.

**Impacto de negócio:** Permite comparar as duas plataformas e escolher com critério.


## Próxima aula

**Aula 20 - Instalação e configuração inicial do Ubuntu Server.** Instalar o Ubuntu Server sem interface gráfica, particionar o disco e configurar rede, SSH e atualizações.

---

> Voltar para o [índice do Bloco 3](../README.md).
