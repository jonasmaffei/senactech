# UC7 - Sistemas Operacionais de Redes Locais (Servidores)

> Monorepo: [senactech](../../../README.md) · [Índice de UCs](../../README.md) · UC7 (Técnico em Informática)

![Windows Server](https://img.shields.io/badge/Windows_Server-2022%2F2025-blue)
![Ubuntu Server](https://img.shields.io/badge/Linux-Ubuntu_Server-orange)
![Redes](https://img.shields.io/badge/Redes-TCP%2FIP%2C_NAT_e_pfSense-green)
![Carga horária](https://img.shields.io/badge/Carga_horaria-96h-orange)

Material da **UC7 - Planejar e executar a instalação, a configuração e o monitoramento de sistemas operacionais de redes locais (servidores)** no monorepo **senactech**, do curso **Técnico em Informática** do Senac.

**Curso:** Técnico em Informática  
**Carga horária:** 96 horas  
**Organização:** 32 aulas de 3 horas, em 5 blocos  
**Perfil do egresso:** planeja, instala, configura, monitora e documenta servidores Windows e Ubuntu Server em redes locais, com firewall, serviços espelhados, segurança, disponibilidade e governança.

---

## Sobre a UC

A UC forma o profissional capaz de atuar na infraestrutura de uma rede local, do planejamento à operação:

- entender TCP/IP, IPv4, a rede e o fluxo dos serviços de rede;
- instalar e configurar Windows Server e Ubuntu Server;
- implantar Active Directory, compartilhamento de arquivos e GPOs no Windows;
- instalar e configurar **DNS e DHCP nos dois sistemas**, comparando as implementações;
- publicar serviços web no **IIS (Windows)** e no **Apache + PHP (Ubuntu)**;
- configurar roteamento, NAT e firewall com **pfSense**;
- aplicar segurança, backup, continuidade e monitoramento;
- documentar e defender decisões técnicas com evidências.

O fio condutor é o **ciclo de vida do servidor**: planejar -> instalar -> configurar -> proteger -> monitorar -> melhorar.

> As aulas de **computação em nuvem** viraram conteúdo extra em [`extras/computacao-em-nuvem/`](extras/computacao-em-nuvem/README.md) e não contam nas 32 aulas.

---

## Laboratório final da UC

A infraestrutura construída ao longo do módulo chega ao seguinte ambiente:

| VM | Sistema | Papel |
| :--- | :--- | :--- |
| **DC01** | Windows Server 2022/2025 | AD, compartilhamento de arquivos, DNS e DHCP |
| **CLI01** | Windows 10 | Cliente para testes de domínio, arquivos e aplicação |
| **CLI02** | Windows 10 | Segundo cliente para testes e validação |
| **APP01** | Ubuntu Server 24.04 LTS | Aplicação web em Apache + PHP |
| **DB01** | Ubuntu Server 24.04 LTS | Banco de dados da aplicação |
| **FW01** | pfSense | Roteamento, firewall, NAT e saída para a internet |

> Os serviços de **DNS e DHCP são espelhados**: o DC01 mantém a versão oficial do domínio e o APP01/DB01 são usados para instalar e comparar as versões Linux. O roteamento de toda a infraestrutura sai pelo **FW01 (pfSense)**.

---

## Cenário condutor: NexaTech

Todas as aulas usam uma empresa fictícia, a **NexaTech Soluções Digitais**, com 45 colaboradores, dois andares e uma rede local sem servidores centralizados.

Ao longo da UC, a turma atua como equipe de infraestrutura e deve:

1. diagnosticar a situação atual;
2. projetar a topologia e o plano de endereços;
3. instalar o Windows Server e o Ubuntu Server;
4. configurar AD, arquivos, DNS e DHCP no Windows;
5. instalar e comparar DNS, DHCP e web no Linux;
6. publicar a aplicação Apache/PHP e seu banco de dados;
7. implantar pfSense para roteamento, NAT e liberação de internet;
8. endurecer a segurança, testar backup e monitorar os serviços;
9. apresentar o projeto final à banca.

O projeto integrador detalhado está em [`aulas/projeto-integrador/README.md`](aulas/projeto-integrador/README.md).

---

## Competências desenvolvidas

| Competência | Onde aparece |
| :--- | :--- |
| Entender TCP/IP, IPv4 e a rede | Bloco 1 |
| Planejar a rede e a instalação dos servidores | Bloco 1 |
| Instalar e configurar Windows Server | Bloco 2 |
| Configurar AD, arquivos e GPOs | Bloco 2 |
| Instalar DNS e DHCP em Windows e Linux | Aulas 12, 13, 24 e 25 |
| Publicar web em IIS e Apache/PHP | Aulas 19 e 26 |
| Configurar roteamento, NAT e firewall pfSense | Bloco 3 |
| Instalar, operar e proteger Ubuntu Server | Bloco 4 |
| Configurar banco de dados e integrar a aplicação | Aula 27 |
| Aplicar segurança, backup e continuidade | Bloco 4 |
| Monitorar, automatizar e diagnosticar | Bloco 5 |
| Documentar, apresentar e defender soluções | Toda a UC |

---

## Organização em blocos

| Bloco | Nome | Aulas | Horas | Foco |
| :---: | :--- | :---: | :---: | :--- |
| Bloco | Nome | Aulas | Horas | Foco |
| :---: | :--- | :---: | :---: | :--- |
| **1** | Fundamentos e Planejamento | 01-07 | 21 h | Redes, TCP/IP, hardware, RAID, virtualização, planejamento e plano diretor |
| **2** | Windows Server | 08-15 | 24 h | Instalação, AD, controlador, UOs, DNS, DHCP, arquivos, quotas e GPOs |
| **3** | Redes, Roteamento e Firewall | 16-19 | 12 h | Roteamento, NAT, pfSense, IIS e acesso remoto |
| **4** | Linux Server e Segurança | 20-29 | 30 h | Ubuntu, administração, usuários, SSH, DHCP, DNS, Apache/PHP, banco, segurança e backup |
| **5** | Operação, Monitoramento e Projeto | 30-32 | 9 h | Monitoramento, automação, troubleshooting, governança e projeto |

---

## Calendário sugerido

> **Período de aulas:** 13/11/2026 a 17/12/2026 e 25/01/2027 a 04/02/2027  
> **Recesso:** 18/12/2026 a 22/01/2027  
> **Finalização da UC:** 05/02/2027 a 18/02/2027

As datas consideram 32 encontros de 3 h em dias úteis, com 20/11/2026 (feriado nacional) e 08/12/2026 (feriado local opcional) preservados. Ajuste ao calendário acadêmico da unidade.

| Aula | Data | Tema | Entrega principal |
| :---: | :--- | :--- | :--- |
| **01** | 13/11/2026 | TCP/IP e IPv4 | **Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping.** |
| **02** | 16/11/2026 | O servidor na rede local e a UC7 | **Diagnóstico inicial de uma página com os serviços que precisam ser centralizados.** |
| **03** | 17/11/2026 | Arquitetura e topologia de rede local | **Diagrama de rede e planilha de endereçamento IP da NexaTech.** |
| **04** | 18/11/2026 | Protocolos e serviços de rede | **Matriz de serviços, protocolos, portas e riscos da NexaTech.** |
| **05** | 19/11/2026 | Hardware de servidor, armazenamento e RAID | **Especificação técnica do servidor com justificativa de CPU, memória, discos e RAID.** |
| **06** | 23/11/2026 | Virtualização e criação de VMs no VirtualBox | **Ficha de configuração da VM (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.** |
| **07** | 24/11/2026 | Planejamento, laboratório e plano diretor da rede | **Plano Diretor da Rede com cronograma, riscos, topologia, IPs e evidências do laboratório.** |
| **08** | 25/11/2026 | Instalação e configuração inicial do Windows Server | **Checklist de instalação preenchida com evidências e configurações do servidor.** |
| **09** | 26/11/2026 | Active Directory Domain Services | **Estrutura do Active Directory documentada e teste de login no domínio.** |
| **10** | 27/11/2026 | Controlador de domínio e ingresso de clientes | **Evidência de promoção do controlador de domínio e login do CLI01 no domínio.** |
| **11** | 30/11/2026 | Unidades organizacionais, grupos e usuários | **Estrutura de OUs, grupos e usuários documentada, com evidência de logins.** |
| **12** | 01/12/2026 | DNS no Windows Server | **Plano de DNS com zonas direta e reversa, registros e evidências de resolução.** |
| **13** | 02/12/2026 | DHCP no Windows Server | **Plano de DHCP com escopo, exclusões, reservas e evidências de concessão.** |
| **14** | 03/12/2026 | Compartilhamento de arquivos, permissões e quotas | **Matriz de permissões e relatório de testes de acesso.** |
| **15** | 04/12/2026 | GPOs e políticas de segurança | **Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação.** |
| **16** | 07/12/2026 | Roteamento e NAT | **Configuração de NAT aplicada e teste de internet a partir do cliente.** |
| **17** | 09/12/2026 | pfSense: instalação e configuração inicial | **pfSense instalado e acesso à interface web documentado.** |
| **18** | 10/12/2026 | pfSense: firewall, NAT e liberação de internet | **Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense.** |
| **19** | 11/12/2026 | Serviços web (IIS), acesso remoto e administração | **Catálogo de serviços web no IIS + checklist de acesso remoto seguro.** |
| **20** | 14/12/2026 | Instalação e configuração inicial do Ubuntu Server | **Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências.** |
| **21** | 15/12/2026 | Administração e operação do Linux | **Runbook de operação do Linux Server.** |
| **22** | 16/12/2026 | Usuários, grupos e permissões no Linux | **Relatório de contas, grupos e permissões, com testes de sudo.** |
| **23** | 17/12/2026 | SSH e administração remota | **Checklist de SSH seguro com testes de acesso e bloqueio de root.** |
| **24** | 25/01/2027 | DHCP no Linux | **Configuração do DHCP Linux comentada e evidência de concessão para o cliente.** |
| **25** | 26/01/2027 | DNS no Linux | **Zonas BIND9 configuradas e evidências de resolução direta e reversa.** |
| **26** | 27/01/2027 | Servidor web Apache + PHP | **Aplicação PHP publicada no APP01 com evidências de acesso pelos clientes.** |
| **27** | 28/01/2027 | Banco de dados e integração da aplicação | **Aplicação integrada ao banco funcionando nos clientes, com evidências do fluxo completo.** |
| **28** | 29/01/2027 | Segurança em servidores Linux | **Relatório de auditoria de segurança com antes, depois e justificativas.** |
| **29** | 01/02/2027 | Backup, continuidade e recuperação de dados | **Plano de backup e continuidade com evidências de restauração e RPO/RTO.** |
| **30** | 02/02/2027 | Monitoramento, automação e troubleshooting | **Plano de monitoramento, script de automação e registro de troubleshooting.** |
| **31** | 03/02/2027 | Governança de TI, segurança e certificações | **Dossiê de governança de TI com catálogo, riscos e roadmap de certificações.** |
| **32** | 04/02/2027 | Projeto integrador: apresentação e defesa | **Projeto integrador completo e defesa oral.** |

**Finalização (05/02 a 18/02/2027):** recuperação, reelaboração de entregas, defesa final para quem precisar e fechamento administrativo da UC.

---

## Índice das aulas

> A **Aula 00** é a abertura da UC (quem sou eu, a UC7, VirtualBox e a primeira VM) e não conta nas 32 aulas: [Slides](aulas/bloco1/aula00/apresentacao_aula00.html) · [Guia](aulas/bloco1/aula00/README.md).

### Bloco 1 - Fundamentos e Planejamento (Aulas 01 a 07)

> Redes, TCP/IP, hardware, RAID, virtualização, planejamento e plano diretor

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **01** | TCP/IP e IPv4 | [Slides](aulas/bloco1/aula01/apresentacao_aula01.html) | [Guia](aulas/bloco1/aula01/README.md) | [Atividade](aulas/bloco1/aula01/atividade.md) |
| **02** | O servidor na rede local e a UC7 | [Slides](aulas/bloco1/aula02/apresentacao_aula02.html) | [Guia](aulas/bloco1/aula02/README.md) | [Atividade](aulas/bloco1/aula02/atividade.md) |
| **03** | Arquitetura e topologia de rede local | [Slides](aulas/bloco1/aula03/apresentacao_aula03.html) | [Guia](aulas/bloco1/aula03/README.md) | [Atividade](aulas/bloco1/aula03/atividade.md) |
| **04** | Protocolos e serviços de rede | [Slides](aulas/bloco1/aula04/apresentacao_aula04.html) | [Guia](aulas/bloco1/aula04/README.md) | [Atividade](aulas/bloco1/aula04/atividade.md) |
| **05** | Hardware de servidor, armazenamento e RAID | [Slides](aulas/bloco1/aula05/apresentacao_aula05.html) | [Guia](aulas/bloco1/aula05/README.md) | [Atividade](aulas/bloco1/aula05/atividade.md) |
| **06** | Virtualização e criação de VMs no VirtualBox | [Slides](aulas/bloco1/aula06/apresentacao_aula06.html) | [Guia](aulas/bloco1/aula06/README.md) | [Atividade](aulas/bloco1/aula06/atividade.md) |
| **07** | Planejamento, laboratório e plano diretor da rede | [Slides](aulas/bloco1/aula07/apresentacao_aula07.html) | [Guia](aulas/bloco1/aula07/README.md) | [Atividade](aulas/bloco1/aula07/atividade.md) |

### Bloco 2 - Windows Server (Aulas 08 a 15)

> Instalação, AD, controlador, UOs, DNS, DHCP, arquivos, quotas e GPOs

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **08** | Instalação e configuração inicial do Windows Server | [Slides](aulas/bloco2/aula08/apresentacao_aula08.html) | [Guia](aulas/bloco2/aula08/README.md) | [Atividade](aulas/bloco2/aula08/atividade.md) |
| **09** | Active Directory Domain Services | [Slides](aulas/bloco2/aula09/apresentacao_aula09.html) | [Guia](aulas/bloco2/aula09/README.md) | [Atividade](aulas/bloco2/aula09/atividade.md) |
| **10** | Controlador de domínio e ingresso de clientes | [Slides](aulas/bloco2/aula10/apresentacao_aula10.html) | [Guia](aulas/bloco2/aula10/README.md) | [Atividade](aulas/bloco2/aula10/atividade.md) |
| **11** | Unidades organizacionais, grupos e usuários | [Slides](aulas/bloco2/aula11/apresentacao_aula11.html) | [Guia](aulas/bloco2/aula11/README.md) | [Atividade](aulas/bloco2/aula11/atividade.md) |
| **12** | DNS no Windows Server | [Slides](aulas/bloco2/aula12/apresentacao_aula12.html) | [Guia](aulas/bloco2/aula12/README.md) | [Atividade](aulas/bloco2/aula12/atividade.md) |
| **13** | DHCP no Windows Server | [Slides](aulas/bloco2/aula13/apresentacao_aula13.html) | [Guia](aulas/bloco2/aula13/README.md) | [Atividade](aulas/bloco2/aula13/atividade.md) |
| **14** | Compartilhamento de arquivos, permissões e quotas | [Slides](aulas/bloco2/aula14/apresentacao_aula14.html) | [Guia](aulas/bloco2/aula14/README.md) | [Atividade](aulas/bloco2/aula14/atividade.md) |
| **15** | GPOs e políticas de segurança | [Slides](aulas/bloco2/aula15/apresentacao_aula15.html) | [Guia](aulas/bloco2/aula15/README.md) | [Atividade](aulas/bloco2/aula15/atividade.md) |

### Bloco 3 - Redes, Roteamento e Firewall (Aulas 16 a 19)

> Roteamento, NAT, pfSense, IIS e acesso remoto

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **16** | Roteamento e NAT | [Slides](aulas/bloco3/aula16/apresentacao_aula16.html) | [Guia](aulas/bloco3/aula16/README.md) | [Atividade](aulas/bloco3/aula16/atividade.md) |
| **17** | pfSense: instalação e configuração inicial | [Slides](aulas/bloco3/aula17/apresentacao_aula17.html) | [Guia](aulas/bloco3/aula17/README.md) | [Atividade](aulas/bloco3/aula17/atividade.md) |
| **18** | pfSense: firewall, NAT e liberação de internet | [Slides](aulas/bloco3/aula18/apresentacao_aula18.html) | [Guia](aulas/bloco3/aula18/README.md) | [Atividade](aulas/bloco3/aula18/atividade.md) |
| **19** | Serviços web (IIS), acesso remoto e administração | [Slides](aulas/bloco3/aula19/apresentacao_aula19.html) | [Guia](aulas/bloco3/aula19/README.md) | [Atividade](aulas/bloco3/aula19/atividade.md) |

### Bloco 4 - Linux Server e Segurança (Aulas 20 a 29)

> Ubuntu, administração, usuários, SSH, DHCP, DNS, Apache/PHP, banco, segurança e backup

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **20** | Instalação e configuração inicial do Ubuntu Server | [Slides](aulas/bloco4/aula20/apresentacao_aula20.html) | [Guia](aulas/bloco4/aula20/README.md) | [Atividade](aulas/bloco4/aula20/atividade.md) |
| **21** | Administração e operação do Linux | [Slides](aulas/bloco4/aula21/apresentacao_aula21.html) | [Guia](aulas/bloco4/aula21/README.md) | [Atividade](aulas/bloco4/aula21/atividade.md) |
| **22** | Usuários, grupos e permissões no Linux | [Slides](aulas/bloco4/aula22/apresentacao_aula22.html) | [Guia](aulas/bloco4/aula22/README.md) | [Atividade](aulas/bloco4/aula22/atividade.md) |
| **23** | SSH e administração remota | [Slides](aulas/bloco4/aula23/apresentacao_aula23.html) | [Guia](aulas/bloco4/aula23/README.md) | [Atividade](aulas/bloco4/aula23/atividade.md) |
| **24** | DHCP no Linux | [Slides](aulas/bloco4/aula24/apresentacao_aula24.html) | [Guia](aulas/bloco4/aula24/README.md) | [Atividade](aulas/bloco4/aula24/atividade.md) |
| **25** | DNS no Linux | [Slides](aulas/bloco4/aula25/apresentacao_aula25.html) | [Guia](aulas/bloco4/aula25/README.md) | [Atividade](aulas/bloco4/aula25/atividade.md) |
| **26** | Servidor web Apache + PHP | [Slides](aulas/bloco4/aula26/apresentacao_aula26.html) | [Guia](aulas/bloco4/aula26/README.md) | [Atividade](aulas/bloco4/aula26/atividade.md) |
| **27** | Banco de dados e integração da aplicação | [Slides](aulas/bloco4/aula27/apresentacao_aula27.html) | [Guia](aulas/bloco4/aula27/README.md) | [Atividade](aulas/bloco4/aula27/atividade.md) |
| **28** | Segurança em servidores Linux | [Slides](aulas/bloco4/aula28/apresentacao_aula28.html) | [Guia](aulas/bloco4/aula28/README.md) | [Atividade](aulas/bloco4/aula28/atividade.md) |
| **29** | Backup, continuidade e recuperação de dados | [Slides](aulas/bloco4/aula29/apresentacao_aula29.html) | [Guia](aulas/bloco4/aula29/README.md) | [Atividade](aulas/bloco4/aula29/atividade.md) |

### Bloco 5 - Operação, Monitoramento e Projeto (Aulas 30 a 32)

> Monitoramento, automação, troubleshooting, governança e projeto

| Aula | Tema | Apresentação | Guia | Atividade |
| :---: | :--- | :---: | :---: | :---: |
| **30** | Monitoramento, automação e troubleshooting | [Slides](aulas/bloco5/aula30/apresentacao_aula30.html) | [Guia](aulas/bloco5/aula30/README.md) | [Atividade](aulas/bloco5/aula30/atividade.md) |
| **31** | Governança de TI, segurança e certificações | [Slides](aulas/bloco5/aula31/apresentacao_aula31.html) | [Guia](aulas/bloco5/aula31/README.md) | [Atividade](aulas/bloco5/aula31/atividade.md) |
| **32** | Projeto integrador: apresentação e defesa | [Slides](aulas/bloco5/aula32/apresentacao_aula32.html) | [Guia](aulas/bloco5/aula32/README.md) | [Atividade](aulas/bloco5/aula32/atividade.md) |


---

## Documentação

| Documento | Descrição |
| :--- | :--- |
| [`docs/00_ementa.md`](docs/00_ementa.md) | Ementa oficial, perfil do docente, metodologia e bibliografia |
| [`docs/01_timeline-engenharia.md`](docs/01_timeline-engenharia.md) | Cadeia causal da UC: por que cada aula existe e como se conectam |
| [`docs/02_resumos.md`](docs/02_resumos.md) | Resumos teóricos consolidados das 32 aulas |
| [`docs/03_git.md`](docs/03_git.md) | Guia rápido de Git e GitHub para clonar, atualizar e versionar |
| [`docs/04_plano-de-aulas.md`](docs/04_plano-de-aulas.md) | Plano detalhado com datas, objetivos, práticas e entregas |
| [`docs/05_materiais-complementares.md`](docs/05_materiais-complementares.md) | Bibliografia, documentação oficial e trilhas de certificação |
| [`docs/06_tutorial-laboratorio-virtual.md`](docs/06_tutorial-laboratorio-virtual.md) | Como montar o laboratório de VMs no VirtualBox |

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
        bloco1/  README.md + aula00 (abertura) + aula01 ... aula07
        bloco2/  README.md + aula08 ... aula15
        bloco3/  README.md + aula16 ... aula19
        bloco4/  README.md + aula20 ... aula29
        bloco5/  README.md + aula30 ... aula32
        projeto-integrador/README.md
      extras/
        README.md
        computacao-em-nuvem/
      laboratorio_virtual/
        README.md
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

Cada pasta `aulaNN/` segue a estrutura:

```text
aulaNN/
  README.md                  # guia da aula
  atividade.md               # atividade de pesquisa/prática
  apresentacao_aulaNN.html   # slides
  laboratorio_virtual/       # roteiro de laboratório no VirtualBox
  scripts/                   # automação e apoio (quando necessário)
```

---

## Laboratório VirtualBox

A base comum fica em [`laboratorio_virtual/`](laboratorio_virtual/README.md) e as VMs são criadas **manualmente no VirtualBox**, sem Vagrant:

| VM | Sistema | Papel | IP interno |
| :--- | :--- | :--- | :--- |
| **DC01** | Windows Server | AD, arquivos, DNS e DHCP | `192.168.10.10` |
| **CLI01** | Windows 10 | Cliente | `192.168.10.100` |
| **CLI02** | Windows 10 | Cliente | `192.168.10.101` |
| **APP01** | Ubuntu Server 24.04 | Apache + PHP e práticas de DNS/DHCP Linux | `192.168.10.20` |
| **DB01** | Ubuntu Server 24.04 | Banco de dados e práticas de serviços | `192.168.10.30` |
| **FW01** | pfSense | Roteamento, firewall e NAT | `192.168.10.1` |

> A rede interna é `rede-nexatech` (`192.168.10.0/24`). Cada VM usa NAT (internet) + rede interna (LAN). O FW01 usa NAT como WAN e a rede interna como LAN.

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
- THOMPSON, M. A. **Microsoft Windows Server 2016: fundamentos**. São Paulo: Érica, 2017.

### Complementar

- COMER, D. E. **Interligação de Redes com TCP/IP**. Rio de Janeiro: Campus, 2015.
- MARTINI, Luciano Andress; MAIEVES, Gustavo Turin. **Linux para Servidores - Da instalação à virtualização**. Santa Cruz do Rio Pardo: Ed. Viena, 2013.
- VERAS, Manoel. **Virtualização - Tecnologia Central do Datacenter**. 2. ed. Rio de Janeiro: Brasport, 2016.
- RAMOS, Atos. **Administração de Servidores Linux**. Rio de Janeiro: Editora Ciência Moderna, 2013.
- Ubuntu Server documentation: https://ubuntu.com/server/docs
- pfSense Documentation: https://docs.netgate.com/pfsense/en/latest/

---

## Como usar este repositório

1. Leia o plano da aula em `aulas/blocoN/aulaNN/README.md`.
2. Abra `apresentacao_aulaNN.html` no navegador e navegue com as setas.
3. Abra `atividade.md` e confira a entrega.
4. Monte o laboratório manualmente no VirtualBox conforme `laboratorio_virtual/README.md`.
5. Registre evidências (prints, comandos, configurações e testes).
6. Atualize a documentação do projeto integrador a cada bloco.

> **Pré-requisitos:** computador com virtualização habilitada, 8 GB de RAM ou mais (16 GB recomendado), cerca de 120 GB livres em disco e **VirtualBox** instalado. As atividades podem ser feitas nas VMs do [`laboratorio_virtual/`](laboratorio_virtual/README.md) ou no laboratório físico, quando disponível.
