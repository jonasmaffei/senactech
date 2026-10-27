# Aula 14 - Instalação e configuração inicial do Linux Server

**Data sugerida:** 02/12/2026 (quarta-feira)  
**Bloco:** 3 - Linux Server e Segurança  
**Carga:** 4 horas

---

## Objetivo

Instalar uma distribuição Linux de servidor e realizar a configuração inicial segura.

---

## Situação de aprendizagem

Para hospedar DNS secundário, intranet e monitoramento com custo baixo, a NexaTech vai usar um servidor Linux. A instalação precisa seguir padrões de segurança e documentação desdé o primeiro boot.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Checklist de instalação e hardening inicial do Linux Server. |
| `apresentacao_aula14.html` | Slides de conceito (a produzir) |
| `laboratorio_virtual/` | Roteiro prático nas VMs (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Distribuições Ubuntu LTS, Debian e Rocky Linux |
| Instalação, particionamento e LVM |
| Usuários, grupos e sudo |
| Rede estática com netplan ou NetworkManager |
| SSH, fuso horário e NTP |
| Atualizações e gerenciadores de pacotes apt e dnf |
| Firewall inicial e comandos essenciais |

### Ferramentas

Ubuntu Server, VirtualBox/Hyper-V, SSH, ufw

---

## Prática em laboratório

Servidor Linux instalado e acessível por SSH na rede interna.

1. Instalar o Ubuntu Server na VM do laboratório
2. Configurar IP estático e hostname
3. Criar usuário administrativo e habilitar SSH
4. Atualizar o sistema e configurar o firewall básico

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Checklist de instalação e hardening inicial do Linux Server.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que não é recomendado usar login direto de root por SSH em um servidor de produção?

---

## Relação com o projeto

Abre o Bloco 3 e coloca o segundo sistema operacional no mesmo laboratório.

**O que fica em aberto:** Instalado o sistema, é preciso aprender a operá-lo no dia a dia.

**Impacto de negócio:** Linux reduz custo de licenciamento e é base de muitos serviços de nuvem e containers.


## Próxima aula

**Aula 15 - Administração e operação do Linux.** Com a operação sob controle, é hora de publicar os serviços de rede no Linux.

---

> Voltar para o [índice do Bloco 3](../README.md).
