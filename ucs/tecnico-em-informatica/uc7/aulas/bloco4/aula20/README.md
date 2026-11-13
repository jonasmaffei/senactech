# Aula 20 - Instalação e configuração inicial do Ubuntu Server

**Data sugerida:** 14/12/2026 (segunda-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Instalar o Ubuntu Server sem interface gráfica nas VMs APP01 e DB01, particionar o disco e configurar rede, SSH e atualizações.

---

## Situação de aprendizagem

A NexaTech vai usar um servidor Linux de baixo custo para DNS, web e monitoramento; a instalação precisa nascer documentada e segura.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências. |
| [`apresentacao_aula20.html`](apresentacao_aula20.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Ubuntu Server 24.04 LTS sem ambiente gráfico |
| Particionamento EFI, /, /home e swap |
| Usuários, root e sudo |
| Rede estática em /etc/netplan/50-cloud-init.yaml |
| Hostname, SSH e NTP |
| apt update/upgrade e firewall básico |

### Ferramentas

VirtualBox, ISO do Ubuntu, SSH e ufw

---

## Prática em laboratório

Instalação do Ubuntu Server nas VMs APP01 e DB01.

1. Criar a VM com dois adaptadores (NAT e rede interna)
2. Particionar: EFI 200 MB, / 20 GB ext4, /home 25 GB ext4 e swap
3. Instalar sem ambiente gráfico
4. Configurar IP estático 192.168.10.20 e hostname
5. Instalar SSH, atualizar o sistema e configurar o ufw

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que separar /home e usar ext4 pode facilitar a operação do servidor?

---

## Relação com o projeto

Entrega o servidor Linux base da NexaTech.

**O que fica em aberto:** Aprender a operar serviços, processos, logs e agendamentos.

**Impacto de negócio:** Padroniza a instalação e reduz erros na operação do servidor Linux.


## Próxima aula

**Aula 21 - Administração e operação do Linux.** Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.

---

> Voltar para o [índice do Bloco 4](../README.md).
