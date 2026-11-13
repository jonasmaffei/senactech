# Aula 01 - TCP/IP e IPv4

**Data sugerida:** 13/11/2026 (sexta-feira)
**Bloco:** 1 - Fundamentos e Planejamento
**Carga:** 3 horas

---

## Objetivo

Compreender o modelo TCP/IP e o endereçamento IPv4, criando duas VMs Windows 10 na mesma rede interna e testando a comunicação.

---

## Situação de aprendizagem

Antes de instalar servidores, a equipe precisa entender como os pacotes circulam e como os endereços IP serão distribuídos na rede local.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping. |
| [`apresentacao_aula01.html`](apresentacao_aula01.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Modelo TCP/IP e comparação com o modelo OSI |
| Endereços IPv4: rede, host, máscara e gateway |
| IPs privados, públicos e NAT |
| Notação CIDR e identificação da rede |
| DNS e DHCP no fluxo de configuração |
| Testes com ping, ipconfig, ip e tracert |

### Ferramentas

VirtualBox, Windows 10, ISO e prompt de comando

---

## Prática em laboratório

Criação de duas VMs Windows 10 na mesma rede interna e teste de conectividade.

1. Criar as VMs CLI01 e CLI02 com Windows 10
2. Adicionar as duas VMs à rede interna rede-nexatech
3. Configurar IPs diferentes na mesma rede: 192.168.10.100 e 192.168.10.101
4. Testar ping entre as duas VMs nos dois sentidos
5. Registrar prints do ipconfig e do ping

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que uma máscara ou gateway errado derruba a comunicação mesmo com o cabo conectado?

---

## Relação com o projeto

Define os conceitos de endereçamento que sustentarão toda a infraestrutura.

**O que fica em aberto:** Com os conceitos entendidos, é preciso definir o papel de cada servidor.

**Impacto de negócio:** Um plano de IP correto evita conflitos e facilita a instalação dos servidores.


## Próxima aula

**Aula 02 - O servidor na rede local e a UC7.** Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e o cenário que conduzirá a UC7.

---

> Voltar para o [índice do Bloco 1](../README.md).
