# Aula 24 - DHCP no Linux

**Data sugerida:** 25/01/2027 (segunda-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Instalar e configurar o DHCP no Ubuntu Server para atender a LAN de laboratório.

---

## Situação de aprendizagem

A NexaTech já usa DHCP no Windows; a equipe precisa saber operar o mesmo serviço no Linux e entender as diferenças.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Configuração do DHCP Linux comentada e evidência de concessão para o cliente. |
| [`apresentacao_aula24.html`](apresentacao_aula24.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| isc-dhcp-server e Kea DHCP |
| /etc/dhcp/dhcpd.conf |
| Faixa, gateway e DNS |
| Reservas e concessões |
| Logs e diagnóstico |
| Convivência com o DHCP do Windows |

### Ferramentas

Ubuntu Server, isc-dhcp-server, journalctl e ip

---

## Prática em laboratório

Configuração do DHCP no Ubuntu Server.

1. Instalar o isc-dhcp-server no APP01
2. Configurar a rede 192.168.10.0/24
3. Definir faixa, gateway e DNS
4. Iniciar e habilitar o serviço
5. Testar a concessão em CLI01/CLI02 e registrar logs

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Configuração do DHCP Linux comentada e evidência de concessão para o cliente.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que dois servidores DHCP na mesma rede podem causar conflitos?

---

## Relação com o projeto

Amplia o domínio de serviços de rede em Linux.

**O que fica em aberto:** O próximo serviço espelhado é o DNS.

**Impacto de negócio:** Dá autonomia para operar o mesmo serviço em Windows e Linux.


## Próxima aula

**Aula 25 - DNS no Linux.** Instalar e configurar o BIND9 no Ubuntu Server para resolver nomes da rede.

---

> Voltar para o [índice do Bloco 4](../README.md).
