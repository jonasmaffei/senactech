# Aula 09 - DNS e DHCP no Windows Server

**Data sugerida:** 25/11/2026 (quarta-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 4 horas

---

## Objetivo

Configurar DNS e DHCP integrados ao Active Directory para atender os clientes da rede.

---

## Situação de aprendizagem

Os computadores da NexaTech precisam receber IP automaticamente e encontrar os servidores pelo nome. Sem DNS e DHCP bem configurados, o domínio e os compartilhamentos falham de forma intermitente.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Plano de DNS/DHCP com zonas, escopos, reservas e evidências de teste. |
| [`apresentacao_aula09.html`](apresentacao_aula09.html) | Slides de conceito (abra no navegador) |
| `laboratorio_virtual/` | Roteiro prático no VirtualBox (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Zonas direta e reversa |
| Registros A, AAAA, CNAME, MX e PTR |
| Encaminhadores e cache DNS |
| Lixeira e limpeza de registros antigos |
| Escopo DHCP, reservas e opções 003, 006 e 015 |
| Autorização do DHCP no Active Directory |
| Failover e boas práticas de endereçamento |

### Ferramentas

DNS Manager, DHCP Console, ipconfig, nslookup

---

## Prática em laboratório

DNS e DHCP funcionais no domínio da NexaTech.

1. Criar zona direta e reversa para nexatech.local
2. Cadastrar registros de servidores e apelidos
3. Criar escopo DHCP com faixa, gateway e DNS
4. Reservar IPs para servidores e impressoras e testar em um cliente

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Plano de DNS/DHCP com zonas, escopos, reservas e evidências de teste.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** O que acontece com os clientes se o DHCP cair, e como reservas e failover reduzem esse impacto?

---

## Relação com o projeto

Dá suporte ao domínio da Aula 08 e prepara o compartilhamento de arquivos.

**O que fica em aberto:** Com nomes e endereços resolvidos, os usuários precisam de pastas e permissões.

**Impacto de negócio:** DNS e DHCP estáveis são a base invisível de quase todos os serviços corporativos.


## Próxima aula

**Aula 10 - Compartilhamento de arquivos e permissões.** As permissões estão corretas, mas precisam ser aplicadas de forma padronizada em todos os computadores.

---

> Voltar para o [índice do Bloco 2](../README.md).
