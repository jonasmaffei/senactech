# Plano de Aulas - UC7

**Carga horária:** 96 h  
**Distribuição:** 24 aulas de 4 h em 4 blocos  
**Período:** 12/11/2026 a 17/12/2026  
**Recesso:** 18/12/2026 a 22/01/2027  
**Finalização:** 25/01/2027 a 18/02/2027

> As datas são sugestões alinhadas ao calendário informado. Feriados e eventos da unidade devem ser ajustados pelo docente.

## Visão geral

| Aula | Data | Bloco | Tema | Entrega principal |
| :---: | :---: | :---: | :--- | :--- |
| **01** | 12/11/2026 | 1 | O servidor na rede local e a UC7 | Diagnóstico inicial de uma página com os serviços que precisam ser centralizados. |
| **02** | 13/11/2026 | 1 | Arquitetura e topologia de rede local | Diagrama de rede e planilha de endereçamento IP da NexaTech. |
| **03** | 16/11/2026 | 1 | Protocolos e serviços de rede | Matriz de serviços, protocolos, portas e riscos da NexaTech. |
| **04** | 17/11/2026 | 1 | Hardware de servidor, armazenamento e virtualização | Especificação técnica do servidor e das VMs, com justificativa de custo e capacidade. |
| **05** | 18/11/2026 | 1 | Planejamento da instalação e documentação | Plano de instalação da NexaTech com cronograma, riscos e critérios de aceite. |
| **06** | 19/11/2026 | 1 | Laboratório virtual e plano diretor da rede | Plano Diretor da Rede NexaTech, com topologia, IPs, serviços, cronograma e riscos. |
| **07** | 23/11/2026 | 2 | Instalação e configuração inicial do Windows Server | Checklist de instalação preenchida com evidências e configurações do servidor. |
| **08** | 24/11/2026 | 2 | Active Directory Domain Services | Estrutura do Active Directory documentada e teste de login no domínio. |
| **09** | 25/11/2026 | 2 | DNS e DHCP no Windows Server | Plano de DNS/DHCP com zonas, escopos, reservas e evidências de teste. |
| **10** | 26/11/2026 | 2 | Compartilhamento de arquivos e permissões | Matriz de permissões e relatório de testes de acesso. |
| **11** | 27/11/2026 | 2 | GPOs e políticas de segurança | Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação. |
| **12** | 30/11/2026 | 2 | Serviços web, acesso remoto e administração | Catálogo de serviços web e checklist de acesso remoto seguro. |
| **13** | 01/12/2026 | 2 | Automação e monitoramento no Windows Server | Script de automação e plano de monitoramento do Windows Server. |
| **14** | 02/12/2026 | 3 | Instalação e configuração inicial do Linux Server | Checklist de instalação e hardening inicial do Linux Server. |
| **15** | 03/12/2026 | 3 | Administração e operação do Linux | Runbook de operação do Linux Server. |
| **16** | 04/12/2026 | 3 | Serviços de rede no Linux: DNS, DHCP e web | Configurações comentadas e evidências dos testes dos três serviços. |
| **17** | 07/12/2026 | 3 | Segurança em servidores Linux | Relatório de auditoria de segurança com antes, depois e justificativas. |
| **18** | 09/12/2026 | 3 | Arquivos, backup e interoperabilidade Linux | Plano de backup e interoperabilidade com evidências de restauração. |
| **19** | 10/12/2026 | 3 | Laboratório integrado e troubleshooting | Registro de troubleshooting e relatório do ambiente integrado. |
| **20** | 11/12/2026 | 4 | Monitoramento de servidores e serviços | Plano de monitoramento com métricas, limiares, dashboards e alertas. |
| **21** | 14/12/2026 | 4 | Backup, continuidade e resposta a incidentes | Mini plano de continuidade com RPO, RTO, backups e playbook de incidentes. |
| **22** | 15/12/2026 | 4 | Computação em nuvem e tecnologias emergentes | Recomendação de nuvem para a NexaTech com análise de custo e risco. |
| **23** | 16/12/2026 | 4 | Governança de TI, segurança e certificações | Dossiê de governança de TI com catálogo, riscos e roadmap de certificações. |
| **24** | 17/12/2026 | 4 | Projeto integrador: apresentação e defesa | Projeto integrador completo e defesa oral. |

## Detalhamento

## Bloco 1 - Fundamentos e Planejamento

### Aula 01 - O servidor na rede local e a UC7 (12/11/2026, quinta-feira)

**Objetivo:** Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e o cenário que conduzirá a UC7.

**Situação de aprendizagem:** A NexaTech Soluções Digitais tem 45 colaboradores em dois andares. Hoje os arquivos ficam em um computador comum, não há autenticação centralizada e as falhas de rede são resolvidas no improviso. A direção contratou você para planejar, instalar, configurar e monitorar a nova infraestrutura de servidores.

**Tópicos:**
- Modelo cliente/servidor e redes peer-to-peer
- Tipos de servidor: arquivos, autenticação, DNS, DHCP, web, banco, virtualização e nuvem
- Serviços essenciais de uma LAN corporativa
- On-premise, nuvem e ambiente híbrido
- Ciclo de vida: planejar, instalar, configurar, monitorar e manter
- Ética profissional, LGPD e segurança da informação

**Prática:**
- Inventariar os recursos e as dores da NexaTech
- Classificar os serviços entre essenciais, importantes e opcionais
- Montar um mapa inicial de serviços e responsáveis
- Definir os papéis da equipe e o fluxo de documentação

**Entrega:** Diagnóstico inicial de uma página com os serviços que precisam ser centralizados.

**Ferramentas:** Planilha, editor de texto, draw.io ou diagrams.net

### Aula 02 - Arquitetura e topologia de rede local (13/11/2026, sexta-feira)

**Objetivo:** Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.

**Situação de aprendizagem:** A empresa ocupa dois andares, tem 45 estações, impressoras de rede, Wi-Fi para visitantes e vai receber servidores. Antes de comprar equipamentos, é preciso desenhar a topologia e definir o plano de endereços.

**Tópicos:**
- Topologias estrela, barramento, anel e malha
- Cabeamento Cat5e/Cat6, fibra óptica e patch panel
- Rack, switch, roteador, firewall e access point
- VLANs e segmentação por setor
- IPv4: classes, máscara, CIDR e sub-redes
- IPv6 e endereçamento dual stack
- Documentação de rede e plano de IPs

**Prática:**
- Desenhar a topologia física e lógica da NexaTech
- Calcular sub-redes para administração, vendas, suporte, servidores e visitantes
- Montar a planilha de endereços e reservas
- Revisar o diagrama com a turma e corrigir inconsistências

**Entrega:** Diagrama de rede e planilha de endereçamento IP da NexaTech.

**Ferramentas:** draw.io ou diagrams.net, planilha, calculadora de sub-redes

### Aula 03 - Protocolos e serviços de rede (16/11/2026, segunda-feira)

**Objetivo:** Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.

**Situação de aprendizagem:** A equipe precisa definir quais serviços rodarão nos servidores e quais portas deverão ser liberadas no firewall. Um erro nessa matriz pode deixar a rede insegura ou quebrar serviços essenciais.

**Tópicos:**
- Modelo OSI e pilha TCP/IP
- TCP versus UDP
- Portas essenciais: DNS 53, DHCP 67/68, HTTP 80, HTTPS 443, SMB 445, SSH 22, RDP 3389, LDAP 389/636
- DNS: hierarquia, tipos de registro e resolução
- DHCP: descoberta, oferta, requisição e confirmação
- HTTP/HTTPS, SMB, SSH, NTP e SNMP
- Ferramentas de diagnóstico e captura de pacotes

**Prática:**
- Testar conectividade com ping, tracert e Test-NetConnection
- Consultar nomes com nslookup e dig
- Observar portas abertas com netstat ou ss
- Capturar uma requisição HTTP no Wireshark e identificar as camadas

**Entrega:** Matriz de serviços, protocolos, portas e riscos da NexaTech.

**Ferramentas:** Prompt de comando, PowerShell, Wireshark, nslookup, dig, netstat/ss

### Aula 04 - Hardware de servidor, armazenamento e virtualização (17/11/2026, terça-feira)

**Objetivo:** Especificar hardware de servidor e projetar um laboratório virtualizado compatível com o projeto.

**Situação de aprendizagem:** O orçamento permite um servidor físico e alguns computadores de laboratório. A equipe precisa decidir como hospedar Windows Server, Linux e monitoramento sem comprar três máquinas.

**Tópicos:**
- CPU, núcleos, memória ECC e placas de rede
- Discos SAS, SATA e NVMe
- RAID 0, 1, 5 e 10 e tolerância a falhas
- Fontes redundantes, hot swap e gerenciamento remoto
- Hypervisors tipo 1 e tipo 2: Hyper-V, Proxmox, VMware e VirtualBox
- Redes virtuais NAT, bridge e interna
- Snapshots, clones e planejamento de capacidade

**Prática:**
- Comparar duas configurações de servidor com custo e desempenho
- Criar as VMs de Windows Server e Ubuntu Server no laboratório
- Configurar a rede interna do laboratório
- Registrar uma linha de base com snapshot antes das próximas aulas

**Entrega:** Especificação técnica do servidor e das VMs, com justificativa de custo e capacidade.

**Ferramentas:** VirtualBox ou Hyper-V, planilha de orçamento

### Aula 05 - Planejamento da instalação e documentação (18/11/2026, quarta-feira)

**Objetivo:** Produzir um plano de instalação com requisitos, riscos, backup, licenciamento e cronograma.

**Situação de aprendizagem:** A direção só libera a compra e a janela de manutenção depois de ver um plano claro. É preciso mostrar o que será feito, em que ordem, com quais riscos e como voltar atrás se algo falhar.

**Tópicos:**
- Levantamento e priorização de requisitos
- Escopo, cronograma e marcos de entrega
- Licenciamento Windows Server, CALs e software livre
- Backup 3-2-1 e política de retenção
- Segurança física e lógica
- Gestão de mudanças e plano de reversão
- Documentação: inventário, diagramas, runbooks e critérios de aceite

**Prática:**
- Criar a checklist de pré-instalação
- Montar a matriz de riscos com probabilidade, impacto e resposta
- Definir a ordem de instalação dos serviços
- Escrever os critérios de aceite de cada entrega

**Entrega:** Plano de instalação da NexaTech com cronograma, riscos e critérios de aceite.

**Ferramentas:** Editor de texto, planilha, modelo de plano de projeto

### Aula 06 - Laboratório virtual e plano diretor da rede (19/11/2026, quinta-feira)

**Objetivo:** Montar o laboratório virtual e consolidar o plano diretor da rede da NexaTech.

**Situação de aprendizagem:** Chegou o momento de provar que o plano funciona. A equipe precisa deixar as VMs prontas, a rede interna respondendo e o documento consolidado para a primeira entrega à direção.

**Tópicos:**
- Revisão dos blocos anteriores
- Configuração de rede interna e host-only
- Endereçamento estático do laboratório
- Snapshots e linha de base
- Organização de pastas e versionamento da documentação
- Apresentação do plano diretor

**Prática:**
- Criar a rede interna rede-nexatech em 192.168.10.0/24
- Configurar IP estático nas VMs e testar conectividade
- Tirar snapshot limpo de cada VM
- Consolidar o plano diretor em um único documento

**Entrega:** Plano Diretor da Rede NexaTech, com topologia, IPs, serviços, cronograma e riscos.

**Ferramentas:** VirtualBox ou Hyper-V, Git, editor de texto

## Bloco 2 - Windows Server

### Aula 07 - Instalação e configuração inicial do Windows Server (23/11/2026, segunda-feira)

**Objetivo:** Instalar o Windows Server e executar a configuração inicial segura do servidor.

**Situação de aprendizagem:** O primeiro servidor da NexaTech será o controlador de domínio e servidor de arquivos. A instalação precisa sair do padrão inseguro de fábrica e já nascer com nome, rede, atualizações e administração remota definidos.

**Tópicos:**
- Edições Standard e Datacenter
- Desktop Experience versus Server Core
- Requisitos de hardware e virtualização
- Instalação e configuração pós-instalação
- Nome do host, fuso horário, rede estática e ativação
- Funções e recursos do Windows Server
- Windows Admin Center, RSAT e administração remota
- Licenciamento e CALs

**Prática:**
- Instalar o Windows Server na VM do laboratório
- Definir nome, IP estático, DNS e fuso horário
- Executar atualizações e ativar o sistema
- Instalar as funções iniciais e habilitar administração remota

**Entrega:** Checklist de instalação preenchida com evidências e configurações do servidor.

**Ferramentas:** VirtualBox/Hyper-V, ISO do Windows Server, Windows Admin Center

### Aula 08 - Active Directory Domain Services (24/11/2026, terça-feira)

**Objetivo:** Configurar o Active Directory, criar a estrutura organizacional e gerenciar usuários e grupos.

**Situação de aprendizagem:** A NexaTech quer centralizar o login e as permissões. Hoje cada computador tem contas locais e ninguém sabe quem acessou o quê. O domínio precisa refletir os setores e as regras da empresa.

**Tópicos:**
- Conceitos de domínio, floresta, árvore e controlador de domínio
- LDAP, Kerberos e dependência do DNS
- Promoção do servidor a controlador de domínio
- Unidades organizacionais por setor
- Usuários, grupos, UPN e políticas de senha
- Ingresso de clientes no domínio
- Boas práticas de separação de privilégios

**Prática:**
- Promover o servidor a controlador do domínio nexatech.local
- Criar OUs para Administração, Vendas, Suporte e Servidores
- Criar usuários e grupos de segurança
- Ingressar um cliente Windows no domínio e testar login

**Entrega:** Estrutura do Active Directory documentada e teste de login no domínio.

**Ferramentas:** Windows Server, Active Directory Users and Computers, RSAT

### Aula 09 - DNS e DHCP no Windows Server (25/11/2026, quarta-feira)

**Objetivo:** Configurar DNS e DHCP integrados ao Active Directory para atender os clientes da rede.

**Situação de aprendizagem:** Os computadores da NexaTech precisam receber IP automaticamente e encontrar os servidores pelo nome. Sem DNS e DHCP bem configurados, o domínio e os compartilhamentos falham de forma intermitente.

**Tópicos:**
- Zonas direta e reversa
- Registros A, AAAA, CNAME, MX e PTR
- Encaminhadores e cache DNS
- Lixeira e limpeza de registros antigos
- Escopo DHCP, reservas e opções 003, 006 e 015
- Autorização do DHCP no Active Directory
- Failover e boas práticas de endereçamento

**Prática:**
- Criar zona direta e reversa para nexatech.local
- Cadastrar registros de servidores e apelidos
- Criar escopo DHCP com faixa, gateway e DNS
- Reservar IPs para servidores e impressoras e testar em um cliente

**Entrega:** Plano de DNS/DHCP com zonas, escopos, reservas e evidências de teste.

**Ferramentas:** DNS Manager, DHCP Console, ipconfig, nslookup

### Aula 10 - Compartilhamento de arquivos e permissões (26/11/2026, quinta-feira)

**Objetivo:** Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.

**Situação de aprendizagem:** A NexaTech guarda contratos, propostas e documentos fiscais em uma pasta compartilhada sem controle. A diretoria quer acesso por setor, rastreabilidade e possibilidade de recuperar arquivos apagados.

**Tópicos:**
- SMB e compartilhamentos de rede
- Permissões de compartilhamento versus NTFS
- Herança, acesso efetivo e princípio do menor privilégio
- Modelo AGDLP: contas, grupos globais, grupos locais de domínio e permissões
- Quotas e File Server Resource Manager
- Shadow Copies e versões anteriores
- Backup, DFS e auditoria de acesso

**Prática:**
- Criar pastas por setor e compartilhar via SMB
- Aplicar permissões NTFS usando grupos
- Configurar quotas e cópias de sombra
- Mapear unidades e testar acessos permitidos e negados

**Entrega:** Matriz de permissões e relatório de testes de acesso.

**Ferramentas:** Windows Server, Explorador de Arquivos, FSRM, PowerShell

### Aula 11 - GPOs e políticas de segurança (27/11/2026, sexta-feira)

**Objetivo:** Aplicar políticas de grupo para padronizar segurança e configurações nos clientes do domínio.

**Situação de aprendizagem:** A auditoria interna apontou senhas fracas, telas que não bloqueiam e unidades de rede mapeadas manualmente. A equipe precisa padronizar isso sem visitar cada computador.

**Tópicos:**
- Objetos de GPO, escopo e herança
- Ordem de precedência e filtragem de segurança
- Política de senha e bloqueio de conta
- Firewall, atualizações e restrições de software
- Mapeamento de unidades e impressoras
- Auditoria e diagnóstico com gpresult e RSOP

**Prática:**
- Criar GPO de política de senha e bloqueio de tela
- Mapear unidades de rede e impressoras por setor
- Aplicar configurações de firewall e atualizações
- Validar com gpresult e testar com usuários de OUs diferentes

**Entrega:** Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação.

**Ferramentas:** Group Policy Management Console, gpresult, RSOP

### Aula 12 - Serviços web, acesso remoto e administração (30/11/2026, segunda-feira)

**Objetivo:** Publicar serviços web e configurar administração remota segura no Windows Server.

**Situação de aprendizagem:** A NexaTech precisa de uma intranet simples para comunicados e de uma forma segura de administrar o servidor sem ficar fisicamente na sala. A solução não pode expor RDP ou HTTP sem proteção.

**Tópicos:**
- IIS: sites, bindings, permissões e logs
- HTTP versus HTTPS e certificados TLS
- RDP: riscos, restrições e boas práticas
- VPN e acesso remoto seguro
- Windows Admin Center e PowerShell Remoting
- WinRM, firewall e princípio do menor privilégio
- Autenticação multifator e gestão de credenciais

**Prática:**
- Publicar uma intranet simples no IIS
- Configurar HTTPS com certificado de teste
- Restringir RDP por firewall e testar acesso
- Administrar o servidor pelo Windows Admin Center ou PowerShell Remoting

**Entrega:** Catálogo de serviços web e checklist de acesso remoto seguro.

**Ferramentas:** IIS, Windows Admin Center, PowerShell, OpenSSL ou certificado interno

### Aula 13 - Automação e monitoramento no Windows Server (01/12/2026, terça-feira)

**Objetivo:** Automatizar tarefas rotineiras e monitorar a saúde do Windows Server com ferramentas nativas.

**Situação de aprendizagem:** A equipe percebeu que verifica espaço em disco, serviços e backups manualmente todos os dias. Isso consome tempo e ainda deixa falhas passarem. É hora de automatizar e registrar evidências.

**Tópicos:**
- PowerShell: cmdlets, pipeline, variáveis e scripts
- Agendador de Tarefas
- Visualizador de Eventos e logs
- Monitor de Desempenho e conjuntos de coletores
- Windows Update e WSUS
- Relatórios de backup e alertas
- PowerShell Remoting e boas práticas de script

**Prática:**
- Criar script que verifica disco, serviços e eventos críticos
- Agendar o script no Task Scheduler
- Criar um data collector set no Performance Monitor
- Gerar um relatório simples e analisar os resultados

**Entrega:** Script de automação e plano de monitoramento do Windows Server.

**Ferramentas:** PowerShell, Task Scheduler, Event Viewer, Performance Monitor

## Bloco 3 - Linux Server e Segurança

### Aula 14 - Instalação e configuração inicial do Linux Server (02/12/2026, quarta-feira)

**Objetivo:** Instalar uma distribuição Linux de servidor e realizar a configuração inicial segura.

**Situação de aprendizagem:** Para hospedar DNS secundário, intranet e monitoramento com custo baixo, a NexaTech vai usar um servidor Linux. A instalação precisa seguir padrões de segurança e documentação desdé o primeiro boot.

**Tópicos:**
- Distribuições Ubuntu LTS, Debian e Rocky Linux
- Instalação, particionamento e LVM
- Usuários, grupos e sudo
- Rede estática com netplan ou NetworkManager
- SSH, fuso horário e NTP
- Atualizações e gerenciadores de pacotes apt e dnf
- Firewall inicial e comandos essenciais

**Prática:**
- Instalar o Ubuntu Server na VM do laboratório
- Configurar IP estático e hostname
- Criar usuário administrativo e habilitar SSH
- Atualizar o sistema e configurar o firewall básico

**Entrega:** Checklist de instalação e hardening inicial do Linux Server.

**Ferramentas:** Ubuntu Server, VirtualBox/Hyper-V, SSH, ufw

### Aula 15 - Administração e operação do Linux (03/12/2026, quinta-feira)

**Objetivo:** Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.

**Situação de aprendizagem:** O servidor Linux já está no ar, mas a equipe precisa de rotinas para saber O que éstá rodando, quanto disco resta, o que falhou e como agendar tarefas sem depender de lembretes.

**Tópicos:**
- systemd: units, enable, start, status e journalctl
- Processos: ps, top, htop e kill
- Disco: df, du, lsblk, mount e LVM
- Permissões: chmod, chown e umask
- Logs em /var/log e logrotate
- cron e systemd timers
- Chaves SSH e sessões persistentes com tmux/screen

**Prática:**
- Criar um serviço systemd simples
- Agendar um backup com systemd timer
- Analisar logs e identificar um erro
- Verificar uso de disco e permissões de arquivos

**Entrega:** Runbook de operação do Linux Server.

**Ferramentas:** systemd, journalctl, htop, cron, tmux, rsync

### Aula 16 - Serviços de rede no Linux: DNS, DHCP e web (04/12/2026, sexta-feira)

**Objetivo:** Configurar DNS, DHCP e servidor web em Linux para atender a rede da NexaTech.

**Situação de aprendizagem:** A NexaTech quer um DNS secundário, DHCP para a VLAN de visitantes e uma intranet em Linux. Esses serviços precisam coexistir com o ambiente Windows sem conflitos.

**Tópicos:**
- BIND9: zonas, registros e encaminhadores
- isc-dhcp-server ou Kea DHCP
- Apache e Nginx: virtual hosts e permissões
- PHP e conteúdo estático
- TLS e certificados
- Proxy reverso e cabeçalhos
- Testes com dig, nslookup, curl e navegador

**Prática:**
- Configurar zona DNS no BIND e testar com dig
- Criar escopo DHCP para visitantes
- Publicar uma intranet simples no Nginx ou Apache
- Testar resolução, endereçamento e acesso web

**Entrega:** Configurações comentadas e evidências dos testes dos três serviços.

**Ferramentas:** BIND9, Kea/isc-dhcp-server, Nginx ou Apache, dig, curl

### Aula 17 - Segurança em servidores Linux (07/12/2026, segunda-feira)

**Objetivo:** Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.

**Situação de aprendizagem:** A NexaTech sofreu tentativas de acesso SSH e precisa provar à diretoria que o servidor Linux está protegido. A auditoria vai verificar usuários, firewall, atualizações e logs.

**Tópicos:**
- Checklist de hardening e CIS Benchmarks
- Atualizações e remoção de serviços desnecessários
- sudo, menor privilégio e contas de serviço
- SSH seguro: chaves, root desabilitado e fail2ban
- Firewall com ufw, nftables ou firewalld
- SELinux e AppArmor
- TLS, gestão de segredos e auditd
- Resposta a incidentes e análise de logs

**Prática:**
- Endurecer a configuração do SSH
- Configurar firewall e fail2ban
- Auditar usuários, permissões e serviços ativos
- Comparar o antes e o depois com evidências

**Entrega:** Relatório de auditoria de segurança com antes, depois e justificativas.

**Ferramentas:** SSH, ufw/nftables, fail2ban, auditd, Lynis

### Aula 18 - Arquivos, backup e interoperabilidade Linux (09/12/2026, quarta-feira)

**Objetivo:** Configurar compartilhamento de arquivos, backup e integração do Linux com clientes Windows.

**Situação de aprendizagem:** A NexaTech precisa que o servidor Linux também compartilhe arquivos com os clientes Windows e que os dados sejam recuperáveis após exclusão acidental ou falha.

**Tópicos:**
- Samba: compartilhamentos, usuários e permissões
- NFS para clientes Linux
- rsync, tar e backup incremental
- Regra 3-2-1 e política de retenção
- Testes de restauração
- Integração com AD via winbind ou sssd
- Quotas e monitoramento de espaço

**Prática:**
- Configurar um compartilhamento Samba e acessar pelo Windows
- Criar rotina de backup com rsync
- Simular exclusão de arquivo e restaurar a versão anterior
- Documentar permissões e retenção

**Entrega:** Plano de backup e interoperabilidade com evidências de restauração.

**Ferramentas:** Samba, rsync, tar, systemd timer, Windows Explorer

### Aula 19 - Laboratório integrado e troubleshooting (10/12/2026, quinta-feira)

**Objetivo:** Integrar serviços Windows e Linux e diagnosticar falhas comuns em um ambiente misto.

**Situação de aprendizagem:** Depois da implantação, os usuários começam a relatar problemas intermitentes: login lento, nomes que não resolvem, pastas inacessíveis e intranet fora do ar. A equipe precisa de método, não de chute.

**Tópicos:**
- Fluxo DHCP -> DNS -> autenticação -> arquivos/web
- Metodologia de troubleshooting e registro de hipóteses
- Ferramentas: ping, traceroute, dig, nslookup, ss, tcpdump, Wireshark
- Event Viewer, journalctl e logs de firewall
- Problemas comuns: DNS, horário, firewall, permissões e certificados
- Documentação da solução e gestão de mudanças

**Prática:**
- Resolver cenários de falha preparados pelo docente
- Registrar sintoma, hipótese, teste e solução
- Validar o ambiente integrado de ponta a ponta
- Atualizar a documentação com as correções

**Entrega:** Registro de troubleshooting e relatório do ambiente integrado.

**Ferramentas:** Ferramentas de rede, logs do Windows e Linux, Wireshark

## Bloco 4 - Monitoramento, Nuvem, Governança e Projeto

### Aula 20 - Monitoramento de servidores e serviços (11/12/2026, sexta-feira)

**Objetivo:** Implementar monitoramento de métricas, logs e alertas para os servidores da NexaTech.

**Situação de aprendizagem:** A direção quer saber, antes dos usuários, quando um serviço cair, o disco encher ou a carga subir. A equipe precisa de um painel e de alertas confiáveis.

**Tópicos:**
- Conceitos de monitoramento: disponibilidade, latência, capacidade e SLO
- SNMP, agentes e coleta de métricas
- Zabbix, Prometheus e Grafana
- Monitoramento de Windows e Linux
- Dashboards e limiares
- Alertas por e-mail, Telegram ou webhook
- Centralização de logs

**Prática:**
- Instalar Zabbix ou Prometheus/Grafana na VM de monitoramento
- Adicionar o Windows Server e o Linux como hosts monitorados
- Criar um dashboard com CPU, memória, disco e disponibilidade
- Configurar um alerta e testar a notificação

**Entrega:** Plano de monitoramento com métricas, limiares, dashboards e alertas.

**Ferramentas:** Zabbix ou Prometheus/Grafana, SNMP, agentes, webhook

### Aula 21 - Backup, continuidade e resposta a incidentes (14/12/2026, segunda-feira)

**Objetivo:** Definir estratégia de backup, continuidade de negócio e resposta a incidentes para a NexaTech.

**Situação de aprendizagem:** Um simulado de ransomware será executado na aula. A empresa precisa saber o que restaurar, em quanto tempo e quem toma cada decisão durante uma crise.

**Tópicos:**
- RPO e RTO
- Regra 3-2-1 e cópias imutáveis ou offline
- Backup completo, incremental e diferencial
- Retenção e descarte seguro
- Plano de continuidade e recuperação de desastres
- Resposta a incidentes: preparar, detectar, conter, erradicar, recuperar e aprender
- Comunicação e notificação LGPD

**Prática:**
- Executar um simulado de falha e restaurar os serviços
- Medir o tempo de recuperação
- Criar um playbook de resposta a incidentes
- Registrar lições aprendidas

**Entrega:** Mini plano de continuidade com RPO, RTO, backups e playbook de incidentes.

**Ferramentas:** Backup do Windows Server, rsync, snapshots, playbook

### Aula 22 - Computação em nuvem e tecnologias emergentes (15/12/2026, terça-feira)

**Objetivo:** Comparar on-premise e nuvem e avaliar tecnologias emergentes para a infraestrutura da NexaTech.

**Situação de aprendizagem:** A direção pergunta se vale migrar arquivos, intranet e backup para a nuvem. A resposta precisa considerar custo, segurança, latência, LGPD e equipe disponível.

**Tópicos:**
- IaaS, PaaS e SaaS
- Nuvem pública, privada e híbrida
- Azure, AWS e Google Cloud
- Virtualização versus containers
- Docker e Kubernetes
- Serverless, edge computing e infraestrutura como código
- CapEx versus OpEx, SLA, lock-in e residência de dados

**Prática:**
- Montar uma comparação de TCO entre on-premise e nuvem
- Criar uma VM gratuita ou simular um serviço em nuvem
- Executar um container simples e comparar com VM
- Avaliar riscos de LGPD e dependência de fornecedor

**Entrega:** Recomendação de nuvem para a NexaTech com análise de custo e risco.

**Ferramentas:** Calculadora de nuvem, Docker, navegador

### Aula 23 - Governança de TI, segurança e certificações (16/12/2026, quarta-feira)

**Objetivo:** Aplicar conceitos de governança e segurança na administração dos servidores e planejar certificações.

**Situação de aprendizagem:** A NexaTech vai passar por uma auditoria de segurança e quer organizar processos. A equipe precisa demonstrar controle sobre ativos, mudanças, incidentes e acessos.

**Tópicos:**
- ITIL 4: catálogo de serviços, incidentes, problemas e mudanças
- COBIT e alinhamento com o negócio
- ISO/IEC 27001 e gestão de riscos
- LGPD e privacidade
- Gestão de ativos, acessos, fornecedores e auditoria
- Certificações Microsoft, Linux e Cisco
- Plano de desenvolvimento profissional

**Prática:**
- Criar catálogo de serviços e matriz de riscos
- Mapear controles de segurança e evidências
- Comparar trilhas de certificação
- Montar um plano de melhoria para a NexaTech

**Entrega:** Dossiê de governança de TI com catálogo, riscos e roadmap de certificações.

**Ferramentas:** Modelos de catálogo, matriz de riscos, Microsoft Learn, NetAcad

### Aula 24 - Projeto integrador: apresentação e defesa (17/12/2026, quinta-feira)

**Objetivo:** Apresentar e defender o projeto completo de rede cliente/servidor da NexaTech, com evidências de instalação, configuração e monitoramento.

**Situação de aprendizagem:** É o dia da entrega final. A banca representa a direção da NexaTech e vai avaliar se a rede planejada, instalada, configurada e monitorada atende aos requisitos da empresa.

**Tópicos:**
- Síntese dos quatro blocos
- Pacote de documentação do projeto
- Demonstração do ambiente e das evidências
- Métricas de funcionamento e monitoramento
- Lições aprendidas e próximos passos
- Comunicação técnica e arguição

**Prática:**
- Apresentar o projeto em 10 a 15 minutos
- Demonstrar login, DNS/DHCP, arquivos, web e monitoramento
- Responder à arguição da banca
- Entregar a documentação final e a autoavaliação

**Entrega:** Projeto integrador completo e defesa oral.

**Ferramentas:** Ambiente virtual, documentação, dashboard, apresentação

---

## Diretrizes de conducao

1. Comece cada aula retomando o problema em aberto da aula anterior.
2. Apresente o conceito com exemplos reais e demonstracao curta.
3. Reserve a maior parte do tempo para prática nas VMs.
4. Feche com a entrega e o registro de evidências.
5. Atualize o projeto integrador ao final de cada bloco.

## Materiais de laboratório

- 1 VM Windows Server (4 GB RAM, 2 vCPU, 60 GB disco)
- 1 VM Ubuntu Server (2 GB RAM, 2 vCPU, 20 GB disco)
- 1 VM cliente Windows (4 GB RAM, 2 vCPU, 40 GB disco)
- Rede interna `rede-nexatech` em `192.168.10.0/24`
- Snapshots antes de cada mudanca relevante
