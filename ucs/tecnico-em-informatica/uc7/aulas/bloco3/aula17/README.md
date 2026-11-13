# Aula 17 - pfSense: instalação e configuração inicial

**Data sugerida:** 09/12/2026 (quarta-feira)
**Bloco:** 3 - Redes, Roteamento e Firewall
**Carga:** 3 horas

---

## Objetivo

Instalar o pfSense em uma VM com duas interfaces e configurar o acesso inicial.

---

## Situação de aprendizagem

A NexaTech quer um firewall dedicado entre a LAN e a internet, com regras claras e administração centralizada.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: pfSense instalado e acesso à interface web documentado. |
| [`apresentacao_aula17.html`](apresentacao_aula17.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| pfSense como firewall e roteador baseado em FreeBSD |
| Interfaces WAN e LAN |
| Instalação e configuração inicial |
| Endereçamento da LAN e da WAN |
| Acesso web e credenciais |
| Boas práticas de senha e atualização |

### Ferramentas

VirtualBox, ISO do pfSense, navegador

---

## Prática em laboratório

Montagem da VM do firewall e primeiros passos.

1. Baixar a ISO e criar a VM FW01
2. Adaptador 1 em NAT (WAN) e adaptador 2 na rede interna (LAN)
3. Instalar e definir as interfaces
4. Configurar o IP da LAN e acessar a interface web
5. Atualizar o pfSense e tirar snapshot

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** pfSense instalado e acesso à interface web documentado.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que o firewall precisa de duas interfaces e de uma política padrão explícita?

---

## Relação com o projeto

Entrega o perímetro de segurança da NexaTech.

**O que fica em aberto:** Configurar DHCP, regras e NAT para liberar a navegação com segurança.

**Impacto de negócio:** Centraliza a proteção e a auditoria do tráfego da rede.


## Próxima aula

**Aula 18 - pfSense: firewall, NAT e liberação de internet.** Configurar DHCP, regras de firewall e NAT no pfSense para liberar a navegação da LAN.

---

> Voltar para o [índice do Bloco 3](../README.md).
