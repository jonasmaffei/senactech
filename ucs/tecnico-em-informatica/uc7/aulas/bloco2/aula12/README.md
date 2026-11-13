# Aula 12 - DNS no Windows Server

**Data sugerida:** 01/12/2026 (terça-feira)
**Bloco:** 2 - Windows Server
**Carga:** 3 horas

---

## Objetivo

Configurar zonas DNS integradas ao Active Directory para resolver nomes dos servidores e clientes.

---

## Situação de aprendizagem

Os computadores da NexaTech precisam encontrar o controlador de domínio e os serviços pelo nome; sem DNS confiável, o domínio falha de forma intermitente.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Plano de DNS com zonas direta e reversa, registros e evidências de resolução. |
| [`apresentacao_aula12.html`](apresentacao_aula12.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Zonas direta e reversa |
| Registros A, AAAA, CNAME, MX e PTR |
| Encaminhadores e cache |
| Integração com o Active Directory |
| Limpeza de registros antigos |
| Testes com nslookup, dig e Resolve-DnsName |

### Ferramentas

DNS Manager, PowerShell, nslookup e dig

---

## Prática em laboratório

Configuração e teste do DNS do domínio nexatech.local.

1. Criar a zona direta nexatech.local
2. Criar a zona reversa da faixa 192.168.10.0/24
3. Cadastrar registros de servidores e apelidos
4. Configurar encaminhadores externos
5. Testar resolução direta e reversa no cliente

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Plano de DNS com zonas direta e reversa, registros e evidências de resolução.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que uma zona reversa é importante para diagnóstico e auditoria?

---

## Relação com o projeto

Consolida a camada de nomes da NexaTech.

**O que fica em aberto:** Entregar endereçamento automático aos clientes com DHCP.

**Impacto de negócio:** Resolução de nomes confiável é pré-requisito para domínio, arquivos e web.


## Próxima aula

**Aula 13 - DHCP no Windows Server.** Configurar escopos, reservas e opções DHCP no Windows Server para entregar endereçamento à rede.

---

> Voltar para o [índice do Bloco 2](../README.md).
