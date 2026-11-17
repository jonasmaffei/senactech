# Aula 02 - O servidor na rede local e a UC7

**Data sugerida:** 16/11/2026 (segunda-feira)
**Bloco:** 1 - Fundamentos e Planejamento
**Carga:** 3 horas

---

## Objetivo

Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e criar um servidor de arquivos básico com compartilhamento SMB.

---

## Situação de aprendizagem

A NexaTech Soluções Digitais tem 45 colaboradores em dois andares. Hoje os arquivos ficam em um computador comum, não há autenticação centralizada e as falhas de rede são resolvidas no improviso. A direção contratou você para planejar, instalar, configurar e monitorar a nova infraestrutura de servidores.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: servidor de arquivos básico no CLI01 acessado pelo CLI02, com ficha de configuração e evidências. |
| [`apresentacao_aula02.html`](apresentacao_aula02.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Modelo cliente/servidor e redes peer-to-peer |
| Tipos de servidor: arquivos, autenticação, DNS, DHCP, web, banco, virtualização e nuvem |
| Serviços essenciais de uma LAN corporativa |
| On-premise, nuvem e ambiente híbrido |
| Ciclo de vida: planejar, instalar, configurar, monitorar e manter |
| Servidor de arquivos básico: compartilhamento SMB no Windows |

### Ferramentas

VirtualBox, Windows 10 (CLI01 e CLI02), Explorador de Arquivos e prompt de comando

---

## Prática em laboratório

Criação de um servidor de arquivos básico: pasta compartilhada no CLI01 via SMB e acesso pelo CLI02.

1. Inventariar as dores da NexaTech e os serviços a centralizar
2. Ligar CLI01 e CLI02 e confirmar os IPs da aula anterior
3. No CLI01, criar a pasta `C:\Compartilhado` e compartilhá-la como `nexatech`
4. Definir permissões de leitura e alteração para os usuários do laboratório
5. No CLI02, acessar `\\192.168.10.100\nexatech` e testar leitura e gravação
6. Mapear a unidade `Z:` e registrar as evidências

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador. As permissões NTFS, quotas e backup serão aprofundados na Aula 14.

---

## Atividade

- **Entrega:** Servidor de arquivos básico em funcionamento (pasta compartilhada no CLI01 acessível pelo CLI02) com ficha de configuração e evidências.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que um simples compartilhamento de pasta já melhora o trabalho da equipe, mas ainda não é uma infraestrutura corporativa?

---

## Relação com o projeto

Apresenta o cenário da NexaTech e o problema de negócio que conduzirá a UC.

**O que fica em aberto:** Quais serviços serão necessários e como eles se conectam fisicamente?

**Impacto de negócio:** Evita compras e instalações sem critério, reduzindo custo e retrabalho.


## Próxima aula

**Aula 03 - Arquitetura e topologia de rede local.** Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.

---

> Voltar para o [índice do Bloco 1](../README.md).
