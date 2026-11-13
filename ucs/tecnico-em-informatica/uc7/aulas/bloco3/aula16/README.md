# Aula 16 - Roteamento e NAT

**Data sugerida:** 07/12/2026 (segunda-feira)
**Bloco:** 3 - Redes, Roteamento e Firewall
**Carga:** 3 horas

---

## Objetivo

Entender como um servidor ou firewall encaminha pacotes entre redes e aplica NAT para liberar internet.

---

## Situação de aprendizagem

A rede interna não tem acesso à internet; é preciso configurar o gateway e o NAT antes de instalar o firewall dedicado.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Configuração de NAT aplicada e teste de internet a partir do cliente. |
| [`apresentacao_aula16.html`](apresentacao_aula16.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Rede interna, rede externa e gateway padrão |
| Roteamento estático e encaminhamento de pacotes |
| NAT, PAT e MASQUERADE |
| ip_forward no Linux e RRAS no Windows |
| Regras de firewall e NAT |
| Testes com ping, traceroute e curl |

### Ferramentas

Ubuntu, Windows Server, iptables, RRAS, ping, curl

---

## Prática em laboratório

Encaminhamento de pacotes e NAT de saída.

1. Habilitar ip_forward no Linux ou RRAS no Windows
2. Configurar NAT de saída na interface WAN
3. Ajustar o gateway no cliente
4. Testar internet e registrar as regras
5. Tirar snapshot da configuração

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Configuração de NAT aplicada e teste de internet a partir do cliente.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Qual a diferença entre dar internet à LAN e expor serviços da LAN para a internet?

---

## Relação com o projeto

Prepara a camada de saída que o pfSense vai assumir.

**O que fica em aberto:** Centralizar as regras em um firewall dedicado e auditável.

**Impacto de negócio:** Permite que a rede interna use a internet sem endereços públicos.


## Próxima aula

**Aula 17 - pfSense: instalação e configuração inicial.** Instalar o pfSense em uma VM com duas interfaces e configurar o acesso inicial.

---

> Voltar para o [índice do Bloco 3](../README.md).
