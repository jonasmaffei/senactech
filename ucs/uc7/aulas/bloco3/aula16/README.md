# Aula 16 - Serviços de rede no Linux: DNS, DHCP e web

**Data sugerida:** 04/12/2026 (sexta-feira)  
**Bloco:** 3 - Linux Server e Segurança  
**Carga:** 4 horas

---

## Objetivo

Configurar DNS, DHCP e servidor web em Linux para atender a rede da NexaTech.

---

## Situação de aprendizagem

A NexaTech quer um DNS secundário, DHCP para a VLAN de visitantes e uma intranet em Linux. Esses serviços precisam coexistir com o ambiente Windows sem conflitos.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Configurações comentadas e evidências dos testes dos três serviços. |
| [`apresentacao_aula16.html`](apresentacao_aula16.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com Vagrant + VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| BIND9: zonas, registros e encaminhadores |
| isc-dhcp-server ou Kea DHCP |
| Apache e Nginx: virtual hosts e permissões |
| PHP e conteúdo estático |
| TLS e certificados |
| Proxy reverso e cabeçalhos |
| Testes com dig, nslookup, curl e navegador |

### Ferramentas

BIND9, Kea/isc-dhcp-server, Nginx ou Apache, dig, curl

---

## Prática em laboratório

DNS, DHCP e intranet Linux funcionando na rede interna.

1. Configurar zona DNS no BIND e testar com dig
2. Criar escopo DHCP para visitantes
3. Publicar uma intranet simples no Nginx ou Apache
4. Testar resolução, endereçamento e acesso web

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Configurações comentadas e evidências dos testes dos três serviços.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Como evitar que dois servidores DHCP na mesma rede entreguem faixas conflitantes?

---

## Relação com o projeto

Coloca o Linux como servidor de serviços, não apenas como máquina de testes.

**O que fica em aberto:** Serviços publicados aumentam a superfície de ataque e exigem hardening.

**Impacto de negócio:** Serviços abertos bem configurados reduzem custo e aumentam a resiliência da rede.


## Próxima aula

**Aula 17 - Segurança em servidores Linux.** Protegido o servidor, ainda é preciso compartilhar arquivos e garantir recuperação.

---

> Voltar para o [índice do Bloco 3](../README.md).
