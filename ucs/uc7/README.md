# UC7 - Sistemas Operacionais de Redes Locais (Servidores)

> Monorepo: [senactech](../../README.md) · [Índice de UCs](../README.md) · UC7

![Windows Server](https://img.shields.io/badge/Windows_Server-2022%2F2025-blue)
![Linux](https://img.shields.io/badge/Linux-Ubuntu%2FRocky-yellow)
![Redes](https://img.shields.io/badge/Redes-LAN_e_servidores-green)
![Carga horária](https://img.shields.io/badge/Carga_horaria-96h-orange)

Material da **UC7 - Planejar e executar a instalação, a configuração e o monitoramento de sistemas operacionais de redes locais (servidores)** no monorepo **senactech**, do curso técnico do Senac.

**Carga horária:** 96 horas  
**Organização:** 24 aulas de 4 horas, em 4 blocos  
**Perfil do egresso:** planeja, instala, configura, monitora e documenta servidores Windows e Linux em redes locais, com foco em segurança, disponibilidade e governança.

---

## Sobre a UC

A UC forma o profissional capaz de atuar na infraestrutura de uma rede local, do planejamento a operação:

- levantar requisitos e projetar a rede cliente/servidor;
- instalar e configurar Windows Server e Linux Server;
- implantar Active Directory, DNS, DHCP, arquivos, web e acesso remoto;
- aplicar segurança, backup, continuidade e monitoramento;
- avaliar nuvem, virtualização e tecnologias emergentes;
- documentar e defender decisões técnicas com evidências.

O fio condutor é o **ciclo de vida do servidor**: planejar -> instalar -> configurar -> proteger -> monitorar -> melhorar.

---

## Cenário condutor: NexaTech

Todas as aulas usam uma empresa fictícia, a **NexaTech Soluções Digitais**, com 45 colaboradores, dois andares e uma rede local sem servidores centralizados.

Ao longo da UC, a turma atua como equipe de infraestrutura e deve:

1. diagnosticar a situação atual;
2. projetar a topologia e o plano de endereços;
3. instalar servidores Windows e Linux;
4. configurar autenticação, DNS, DHCP, arquivos, web e acesso remoto;
5. endurecer a segurança e testar backup;
6. monitorar os serviços;
7. comparar on-premise e nuvem;
8. apresentar o projeto final a banca.

O projeto integrador detalhado está em [`aulas/projeto-integrador/README.md`](aulas/projeto-integrador/README.md).

---

## Competências desenvolvidas

| Competência | Onde aparece |
| :--- | :--- |
| Planejar a rede e a instalação dos servidores | Bloco 1 |
| Instalar e configurar Windows Server | Bloco 2 |
| Instalar, operar e proteger Linux Server | Bloco 3 |
| Configurar serviços de rede | Blocos 2 e 3 |
| Aplicar segurança, backup e continuidade | Blocos 3 e 4 |
| Monitorar servidores e serviços | Blocos 2 e 4 |
| Avaliar nuvem, virtualização e governança | Bloco 4 |
| Documentar, apresentar e defender soluções | Toda a UC |

---

## Organização em blocos

| Bloco | Nome | Aulas | Horas | Foco |
| :---: | :--- | :---: | :---: | :--- |
| **1** | Fundamentos e Planejamento | 01-06 | 24 h | Rede, servidores, virtualização e plano diretor |
| **2** | Windows Server | 07-13 | 28 h | AD, DNS/DHCP, arquivos, GPO, web e automação |
| **3** | Linux Server e Segurança | 14-19 | 24 h | Instalação, operação, serviços, hardening e backup |
| **4** | Monitoramento, Nuvem, Governança e Projeto | 20-24 | 20 h | Monitoramento, continuidade, nuvem, governança e defesa |

---

## Calendário sugerido

> **Período de aulas:** 12/11/2026 a 17/12/2026  
> **Recesso:** 18/12/2026 a 22/01/2027  
> **Finalização da UC:** 25/01/2027 a 18/02/2027 (recuperação, ajustes, entrega final e registro)

As datas abaixo consideram 24 aulas de 4 h em dias úteis, com 20/11/2026 (feriado nacional) e 08/12/2026 (feriado local opcional) preservados. Ajuste ao calendário acadêmico da unidade.

| Aula | Data | Tema | Entrega principal |
| :---: | :--- | :--- | :--- |
| **01** | 12/11/2026 | O servidor na rede local e a UC7 | Diagnóstico inicial de uma página com os serviços que precisam ser centralizados. |
| **02** | 13/11/2026 | Arquitetura e topologia de rede local | Diagrama de rede e planilha de endereçamento IP da NexaTech. |
| **03** | 16/11/2026 | Protocolos e serviços de rede | Matriz de serviços, protocolos, portas e riscos da NexaTech. |
| **04** | 17/11/2026 | Hardware de servidor, armazenamento e virtualização | Especificação técnica do servidor e das VMs, com justificativa de custo e capacidade. |
| **05** | 18/11/2026 | Planejamento da instalação e documentação | Plano de instalação da NexaTech com cronograma, riscos e critérios de aceite. |
| **06** | 19/11/2026 | Laboratório virtual e plano diretor da rede | Plano Diretor da Rede NexaTech, com topologia, IPs, serviços, cronograma e riscos. |
| **07** | 23/11/2026 | Instalação e configuração inicial do Windows Server | Checklist de instalação preenchida com evidências e configurações do servidor. |
| **08** | 24/11/2026 | Active Directory Domain Services | Estrutura do Active Directory documentada e teste de login no domínio. |
| **09** | 25/11/2026 | DNS e DHCP no Windows Server | Plano de DNS/DHCP com zonas, escopos, reservas e evidências de teste. |
| **10** | 26/11/2026 | Compartilhamento de arquivos e permissões | Matriz de permissões e relatório de testes de acesso. |
| **11** | 27/11/2026 | GPOs e políticas de segurança | Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação. |
| **12** | 30/11/2026 | Serviços web, acesso remoto e administração | Catálogo de serviços web e checklist de acesso remoto seguro. |
| **13** | 01/12/2026 | Automação e monitoramento no Windows Server | Script de automação e plano de monitoramento do Windows Server. |
| **14** | 02/12/2026 | Instalação e configuração inicial do Linux Server | Checklist de instalação e hardening inicial do Linux Server. |
| **15** | 03/12/2026 | Administração e operação do Linux | Runbook de operação do Linux Server. |
| **16** | 04/12/2026 | Serviços de rede no Linux: DNS, DHCP e web | Configurações comentadas e evidências dos testes dos três serviços. |
| **17** | 07/12/2026 | Segurança em servidores Linux | Relatório de auditoria de segurança com antes, depois e justificativas. |
| **18** | 09/12/2026 | Arquivos, backup e interoperabilidade Linux | Plano de backup e interoperabilidade com evidências de restauração. |
| **19** | 10/12/2026 | Laboratório integrado e troubleshooting | Registro de troubleshooting e relatório do ambiente integrado. |
| **20** | 11/12/2026 | Monitoramento de servidores e serviços | Plano de monitoramento com métricas, limiares, dashboards e alertas. |
| **21** | 14/12/2026 | Backup, continuidade e resposta a incidentes | Mini plano de continuidade com RPO, RTO, backups e playbook de incidentes. |
| **22** | 15/12/2026 | Computação em nuvem e tecnologias emergentes | Recomendação de nuvem para a NexaTech com análise de custo e risco. |
| **23** | 16/12/2026 | Governança de TI, segurança e certificações | Dossiê de governança de TI com catálogo, riscos e roadmap de certificações. |
| **24** | 17/12/2026 | Projeto integrador: apresentação e defesa | Projeto integrador completo e defesa oral. |

**Finalização (25/01 a 18/02/2027):** recuperação, reelaboração de entregas, defesa final para quem precisar e fechamento administrativo da UC.

---

## Índice das aulas

### Bloco 1 - Fundamentos e Planejamento (Aulas 01 a 06)

> Redes locais, servidores, virtualização e plano de implantação

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **01** | O servidor na rede local e a UC7 | [Slides](aulas/bloco1/aula01/apresentacao_aula01.html) | [Guia](aulas/bloco1/aula01/README.md) | [Atividade](aulas/bloco1/aula01/atividade.md) |
| **02** | Arquitetura e topologia de rede local | [Slides](aulas/bloco1/aula02/apresentacao_aula02.html) | [Guia](aulas/bloco1/aula02/README.md) | [Atividade](aulas/bloco1/aula02/atividade.md) |
| **03** | Protocolos e serviços de rede | [Slides](aulas/bloco1/aula03/apresentacao_aula03.html) | [Guia](aulas/bloco1/aula03/README.md) | [Atividade](aulas/bloco1/aula03/atividade.md) |
| **04** | Hardware de servidor, armazenamento e virtualização | [Slides](aulas/bloco1/aula04/apresentacao_aula04.html) | [Guia](aulas/bloco1/aula04/README.md) | [Atividade](aulas/bloco1/aula04/atividade.md) |
| **05** | Planejamento da instalação e documentação | [Slides](aulas/bloco1/aula05/apresentacao_aula05.html) | [Guia](aulas/bloco1/aula05/README.md) | [Atividade](aulas/bloco1/aula05/atividade.md) |
| **06** | Laboratório virtual e plano diretor da rede | [Slides](aulas/bloco1/aula06/apresentacao_aula06.html) | [Guia](aulas/bloco1/aula06/README.md) | [Atividade](aulas/bloco1/aula06/atividade.md) |

### Bloco 2 - Windows Server (Aulas 07 a 13)

> Instalação, Active Directory, DNS/DHCP, arquivos, GPOs, serviços web e automação

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **07** | Instalação e configuração inicial do Windows Server | [Slides](aulas/bloco2/aula07/apresentacao_aula07.html) | [Guia](aulas/bloco2/aula07/README.md) | [Atividade](aulas/bloco2/aula07/atividade.md) |
| **08** | Active Directory Domain Services | [Slides](aulas/bloco2/aula08/apresentacao_aula08.html) | [Guia](aulas/bloco2/aula08/README.md) | [Atividade](aulas/bloco2/aula08/atividade.md) |
| **09** | DNS e DHCP no Windows Server | [Slides](aulas/bloco2/aula09/apresentacao_aula09.html) | [Guia](aulas/bloco2/aula09/README.md) | [Atividade](aulas/bloco2/aula09/atividade.md) |
| **10** | Compartilhamento de arquivos e permissões | [Slides](aulas/bloco2/aula10/apresentacao_aula10.html) | [Guia](aulas/bloco2/aula10/README.md) | [Atividade](aulas/bloco2/aula10/atividade.md) |
| **11** | GPOs e políticas de segurança | [Slides](aulas/bloco2/aula11/apresentacao_aula11.html) | [Guia](aulas/bloco2/aula11/README.md) | [Atividade](aulas/bloco2/aula11/atividade.md) |
| **12** | Serviços web, acesso remoto e administração | [Slides](aulas/bloco2/aula12/apresentacao_aula12.html) | [Guia](aulas/bloco2/aula12/README.md) | [Atividade](aulas/bloco2/aula12/atividade.md) |
| **13** | Automação e monitoramento no Windows Server | [Slides](aulas/bloco2/aula13/apresentacao_aula13.html) | [Guia](aulas/bloco2/aula13/README.md) | [Atividade](aulas/bloco2/aula13/atividade.md) |

### Bloco 3 - Linux Server e Segurança (Aulas 14 a 19)

> Instalação, operação, serviços de rede, hardening, arquivos, backup e integração

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **14** | Instalação e configuração inicial do Linux Server | [Slides](aulas/bloco3/aula14/apresentacao_aula14.html) | [Guia](aulas/bloco3/aula14/README.md) | [Atividade](aulas/bloco3/aula14/atividade.md) |
| **15** | Administração e operação do Linux | [Slides](aulas/bloco3/aula15/apresentacao_aula15.html) | [Guia](aulas/bloco3/aula15/README.md) | [Atividade](aulas/bloco3/aula15/atividade.md) |
| **16** | Serviços de rede no Linux: DNS, DHCP e web | [Slides](aulas/bloco3/aula16/apresentacao_aula16.html) | [Guia](aulas/bloco3/aula16/README.md) | [Atividade](aulas/bloco3/aula16/atividade.md) |
| **17** | Segurança em servidores Linux | [Slides](aulas/bloco3/aula17/apresentacao_aula17.html) | [Guia](aulas/bloco3/aula17/README.md) | [Atividade](aulas/bloco3/aula17/atividade.md) |
| **18** | Arquivos, backup e interoperabilidade Linux | [Slides](aulas/bloco3/aula18/apresentacao_aula18.html) | [Guia](aulas/bloco3/aula18/README.md) | [Atividade](aulas/bloco3/aula18/atividade.md) |
| **19** | Laboratório integrado e troubleshooting | [Slides](aulas/bloco3/aula19/apresentacao_aula19.html) | [Guia](aulas/bloco3/aula19/README.md) | [Atividade](aulas/bloco3/aula19/atividade.md) |

### Bloco 4 - Monitoramento, Nuvem, Governança e Projeto (Aulas 20 a 24)

> Monitoramento, continuidade, nuvem, governança, certificações e defesa do projeto

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **20** | Monitoramento de servidores e serviços | [Slides](aulas/bloco4/aula20/apresentacao_aula20.html) | [Guia](aulas/bloco4/aula20/README.md) | [Atividade](aulas/bloco4/aula20/atividade.md) |
| **21** | Backup, continuidade e resposta a incidentes | [Slides](aulas/bloco4/aula21/apresentacao_aula21.html) | [Guia](aulas/bloco4/aula21/README.md) | [Atividade](aulas/bloco4/aula21/atividade.md) |
| **22** | Computação em nuvem e tecnologias emergentes | [Slides](aulas/bloco4/aula22/apresentacao_aula22.html) | [Guia](aulas/bloco4/aula22/README.md) | [Atividade](aulas/bloco4/aula22/atividade.md) |
| **23** | Governança de TI, segurança e certificações | [Slides](aulas/bloco4/aula23/apresentacao_aula23.html) | [Guia](aulas/bloco4/aula23/README.md) | [Atividade](aulas/bloco4/aula23/atividade.md) |
| **24** | Projeto integrador: apresentação e defesa | [Slides](aulas/bloco4/aula24/apresentacao_aula24.html) | [Guia](aulas/bloco4/aula24/README.md) | [Atividade](aulas/bloco4/aula24/atividade.md) |


---

## Documentação

| Documento | Descrição |
| :--- | :--- |
| [`docs/00_ementa.md`](docs/00_ementa.md) | Ementa oficial, perfil do docente, metodologia e bibliografia |
| [`docs/01_timeline-engenharia.md`](docs/01_timeline-engenharia.md) | Cadeia causal da UC: por que cada aula existe e como se conectam |
| [`docs/02_resumos.md`](docs/02_resumos.md) | Resumos teóricos consolidados das 24 aulas |
| [`docs/03_git.md`](docs/03_git.md) | Guia rápido de Git e GitHub para clonar, atualizar e versionar |
| [`docs/04_plano-de-aulas.md`](docs/04_plano-de-aulas.md) | Plano detalhado com datas, objetivos, práticas e entregas |
| [`docs/05_materiais-complementares.md`](docs/05_materiais-complementares.md) | Bibliografia, documentação oficial e trilhas de certificação |
| [`docs/06_tutorial-laboratorio-virtual.md`](docs/06_tutorial-laboratorio-virtual.md) | Como montar o laboratório de VMs da UC |

---

## Estrutura da UC7

```text
senactech/
  README.md                    # índice do monorepo
  ucs/
    README.md                  # índice de UCs
    uc7/
      README.md
      requirements.txt
      AGENTS.md
      .context.md
      aulas/
        README.md
        bloco1/  README.md + aula01 ... aula06
        bloco2/  README.md + aula07 ... aula13
        bloco3/  README.md + aula14 ... aula19
        bloco4/  README.md + aula20 ... aula24
        projeto-integrador/README.md
      laboratorio_virtual/
        Vagrantfile
        README.md
        provision/
      questionarios/
        README.md
      docs/
        00_ementa.md
        01_timeline-engenharia.md
        02_resumos.md
        03_git.md
        04_plano-de-aulas.md
        05_materiais-complementares.md
        06_tutorial-laboratorio-virtual.md
```

> Arquivos globais do monorepo (`.gitignore`, `.gitattributes`, `README.md` raiz) ficam na raiz de `senactech/`.

Cada pasta `aulaNN/` segue a estrutura:

```text
aulaNN/
  README.md                  # guia da aula
  atividade.md               # atividade de pesquisa/prática
  apresentacao_aulaNN.html   # slides (pronto)
  laboratorio_virtual/       # roteiro Vagrant + VirtualBox
  scripts/                   # automação e apoio (a produzir)
```

> As **apresentações HTML das 24 aulas**, as **atividades** e os **roteiros de laboratório com Vagrant + VirtualBox** já estão disponíveis. A validação final do laboratório deve ser feita no computador do professor.

---

## Laboratório VirtualBox + Vagrant

A base comum do laboratório fica em [`laboratorio_virtual/`](laboratorio_virtual/README.md) e cria quatro VMs:

| VM | Papel | IP interno |
| :--- | :--- | :--- |
| **DC01** | Windows Server: AD, DNS, DHCP, arquivos e GPOs | `192.168.10.10` |
| **LNX01** | Ubuntu Server: DNS, web, Samba e hardening | `192.168.10.20` |
| **MON01** | Ubuntu Server: monitoramento e logs | `192.168.10.30` |
| **CLI01** | Windows 11: cliente para testes | `192.168.10.100` |

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> A rede interna é `rede-nexatech` (`192.168.10.0/24`). O primeiro adaptador de cada VM é NAT, para o Vagrant; o segundo é a rede interna da UC.

Cada aula tem um roteiro próprio em `aulas/blocoN/aulaNN/laboratorio_virtual/README.md`.

---

## Avaliação sugerida

| Componente | Peso |
| :--- | :---: |
| Atividades e entregas de aula | 30% |
| Laboratórios e evidências técnicas | 30% |
| Projeto integrador (documentação + defesa) | 30% |
| Participação, postura profissional e colaboração | 10% |

Critérios transversais: funcionamento técnico, documentação, segurança, justificativa das decisões e trabalho em equipe.

---

## Bibliografia

### Básica

- BARRETT, Daniel J. **Linux Guia Prático: Comandos Essenciais**. 4. ed. São Paulo: Novatec Editora, 2024.
- PERROTT, S. **Windows Server 2019 & PowerShell All-in-One For Dummies**. John Wiley & Sons, 2019.
- THOMPSON, M. A. **Microsoft Windows Server 2016: fundamentos**. São Paulo: Érika, 2017.

### Complementar

- COMER, D. E. **Interligação de Redes com TCP/IP**. Rio de Janeiro: Campus, 2015.
- MARTINI, Luciano Andress; MAIEVES, Gustavo Turin. **Linux para Servidores - Da instalação à virtualização**. Santa Cruz do Rio Pardo: Ed. Viena, 2013.
- NETO, Manoel Veras de Sousa. **Computação em Nuvem - Nova Arquitetura de TI**. Rio de Janeiro: Brasport, 2015.
- VERAS, Manoel. **Virtualização - Tecnologia Central do Datacenter**. 2. ed. Rio de Janeiro: Brasport, 2016.
- RAMOS, Atos. **Administração de Servidores Linux**. Rio de Janeiro: Editora Ciência Moderna, 2013.

---

## Como usar este repositório

1. Leia o plano da aula em `aulas/blocoN/aulaNN/README.md`.
2. Abra `apresentacao_aulaNN.html` no navegador e navegue com as setas.
3. Abra `atividade.md` e confira a entrega.
4. Suba o laboratório com Vagrant + VirtualBox (`laboratorio_virtual/README.md`).
5. Registre evidências (prints, comandos, configurações e testes).
6. Atualize a documentação do projeto integrador a cada bloco.

> **Pré-requisitos:** computador com virtualização habilitada, 8 GB de RAM ou mais (16 GB recomendado), cerca de 80 GB livres em disco e **VirtualBox + Vagrant** instalados. Quando o laboratório físico não estiver disponível, as atividades podem ser feitas nas VMs do [`laboratorio_virtual/`](laboratorio_virtual/README.md) ou em nuvem gratuita.
