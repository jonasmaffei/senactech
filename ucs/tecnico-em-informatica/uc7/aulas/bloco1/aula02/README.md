# Aula 02 - Conceito de Servidores

**Data sugerida:** 16/11/2026 (segunda-feira)
**Bloco:** 1 - Fundamentos e Planejamento
**Carga:** 3 horas

---

## Objetivo

Reconhecer o papel dos servidores em redes locais, o modelo Cliente/Servidor vs. P2P e o hardware corporativo (ECC, fontes redundantes, RAID).

---

## Situação de aprendizagem

A NexaTech Soluções Digitais tem 45 colaboradores em dois andares. Hoje os arquivos ficam em um computador comum, não há autenticação centralizada e as falhas de rede são resolvidas no improviso. A direção contratou você para planejar, instalar, configurar e monitorar a nova infraestrutura de servidores.

## Dores da NexaTech e prioridades

| Dor | Como aparece hoje | Exemplo de solução |
| :--- | :--- | :--- |
| Arquivos espalhados | Todos usam um PC comum; há cópias duplicadas, versões perdidas e backup manual. | Servidor de arquivos com pasta compartilhada, permissões e rotina de backup. |
| Sem autenticação central | Cada estação tem conta local; as senhas se repetem e ninguém sabe quem acessou o quê. | Active Directory com usuários e grupos únicos para toda a empresa. |
| Rede resolvida no improviso | As falhas são corrigidas sem padrão e sem registro, então o problema volta. | Topologia documentada, plano de IPs e DNS/DHCP padronizados. |
| Sem monitoramento | A equipe só descobre a queda quando o usuário reclama. | Monitoramento de disponibilidade, disco e logs, com alertas. |

**Classificação dos serviços:** essenciais são autenticação, arquivos, DNS e DHCP; importantes são backup, impressão e monitoramento; opcionais são web interna, banco da aplicação e nuvem. A classificação deve ser justificada pelo impacto no negócio.

**Modelo de preenchimento:** use a [`planilha de diagnóstico`](../../../docs/07_planilha-diagnostico-nexatech.xlsx) e o [`guia de preenchimento`](../../../docs/07_planilha-diagnostico.md).

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: servidor de arquivos básico na FS01 (Windows 10) acessado pelo CLI01 e pelo CLI02, com ficha de configuração e evidências. |
| [`apresentacao_aula02.html`](apresentacao_aula02.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Diagnóstico de dores e priorização de serviços |
| Modelo cliente/servidor e redes peer-to-peer |
| Tipos de servidor: arquivos, autenticação, DNS, DHCP, web, banco, virtualização e nuvem |
| Virtualização: hypervisor tipo 1 e 2, capacidade do host, snapshots e ciclo de vida da VM |
| Serviços essenciais de uma LAN corporativa |
| On-premise, nuvem e ambiente híbrido |
| Ciclo de vida: planejar, instalar, configurar, monitorar e manter |
| Servidor de arquivos básico: compartilhamento SMB no Windows |

### Ferramentas

VirtualBox, Windows 10 (FS01, CLI01 e CLI02), Explorador de Arquivos e prompt de comando

---

## Prática em laboratório

Criação de um servidor de arquivos básico em uma terceira VM Windows 10 (FS01), com pasta compartilhada via SMB e acesso pelo CLI01 e pelo CLI02.

1. Preencher a ficha de dores da NexaTech (arquivos no PC comum, falta de autenticação central, falhas no improviso e ausência de monitoramento) e classificar os serviços em essenciais, importantes e opcionais, justificando cada escolha
2. Criar a VM FS01 com Windows 10 e adicioná-la à rede interna `rede-nexatech`
3. Configurar na FS01 o IP `192.168.10.102`
4. Na FS01, criar a pasta `C:\Compartilhado` e compartilhá-la como `nexatech`
5. Definir permissões de leitura e alteração para os usuários do laboratório
6. No CLI01 e no CLI02, acessar `\\192.168.10.102\nexatech` e testar leitura e gravação
7. Mapear a unidade `Z:` e registrar as evidências

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador. As permissões NTFS, quotas e backup serão aprofundados na Aula 14.

---

## Atividade

- **Entrega:** Servidor de arquivos básico em funcionamento (pasta compartilhada na FS01 acessível pelo CLI01 e pelo CLI02) com ficha de configuração e evidências.
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
