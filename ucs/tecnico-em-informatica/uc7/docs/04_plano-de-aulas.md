# Plano de Aulas - UC7

**Carga horária:** 96 h  
**Distribuição:** 32 aulas de 3 h em 5 blocos  
**Período:** 13/11/2026 a 17/12/2026 e 25/01/2027 a 04/02/2027  
**Recesso:** 18/12/2026 a 22/01/2027  
**Finalização:** 05/02/2027 a 18/02/2027

> As datas são sugestões alinhadas ao calendário informado. O conteúdo de nuvem é extra em [`../extras/`](../extras/README.md).

## Visão geral

| Aula | Data | Bloco | Tema | Entrega principal |
| :---: | :---: | :---: | :--- | :--- |
| **01** | 13/11/2026 (sexta-feira) | 1 | TCP/IP e IPv4 | **Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping.** |
| **02** | 16/11/2026 (segunda-feira) | 1 | O servidor na rede local e a UC7 | **Diagnóstico inicial de uma página com os serviços que precisam ser centralizados.** |
| **03** | 17/11/2026 (terça-feira) | 1 | Arquitetura e topologia de rede local | **Diagrama de rede e planilha de endereçamento IP da NexaTech.** |
| **04** | 18/11/2026 (quarta-feira) | 1 | Protocolos e serviços de rede | **Matriz de serviços, protocolos, portas e riscos da NexaTech.** |
| **05** | 19/11/2026 (quinta-feira) | 1 | Hardware de servidor, armazenamento e RAID | **Especificação técnica do servidor com justificativa de CPU, memória, discos e RAID.** |
| **06** | 23/11/2026 (segunda-feira) | 1 | Virtualização e criação de VMs no VirtualBox | **Ficha de configuração da VM (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.** |
| **07** | 24/11/2026 (terça-feira) | 1 | Planejamento, laboratório e plano diretor da rede | **Plano Diretor da Rede com cronograma, riscos, topologia, IPs e evidências do laboratório.** |
| **08** | 25/11/2026 (quarta-feira) | 2 | Instalação e configuração inicial do Windows Server | **Checklist de instalação preenchida com evidências e configurações do servidor.** |
| **09** | 26/11/2026 (quinta-feira) | 2 | Active Directory Domain Services | **Estrutura do Active Directory documentada e teste de login no domínio.** |
| **10** | 27/11/2026 (sexta-feira) | 2 | Controlador de domínio e ingresso de clientes | **Evidência de promoção do controlador de domínio e login do CLI01 no domínio.** |
| **11** | 30/11/2026 (segunda-feira) | 2 | Unidades organizacionais, grupos e usuários | **Estrutura de OUs, grupos e usuários documentada, com evidência de logins.** |
| **12** | 01/12/2026 (terça-feira) | 2 | DNS no Windows Server | **Plano de DNS com zonas direta e reversa, registros e evidências de resolução.** |
| **13** | 02/12/2026 (quarta-feira) | 2 | DHCP no Windows Server | **Plano de DHCP com escopo, exclusões, reservas e evidências de concessão.** |
| **14** | 03/12/2026 (quinta-feira) | 2 | Compartilhamento de arquivos, permissões e quotas | **Matriz de permissões e relatório de testes de acesso.** |
| **15** | 04/12/2026 (sexta-feira) | 2 | GPOs e políticas de segurança | **Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação.** |
| **16** | 07/12/2026 (segunda-feira) | 3 | Roteamento e NAT | **Configuração de NAT aplicada e teste de internet a partir do cliente.** |
| **17** | 09/12/2026 (quarta-feira) | 3 | pfSense: instalação e configuração inicial | **pfSense instalado e acesso à interface web documentado.** |
| **18** | 10/12/2026 (quinta-feira) | 3 | pfSense: firewall, NAT e liberação de internet | **Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense.** |
| **19** | 11/12/2026 (sexta-feira) | 3 | Serviços web (IIS), acesso remoto e administração | **Catálogo de serviços web no IIS + checklist de acesso remoto seguro.** |
| **20** | 14/12/2026 (segunda-feira) | 4 | Instalação e configuração inicial do Ubuntu Server | **Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências.** |
| **21** | 15/12/2026 (terça-feira) | 4 | Administração e operação do Linux | **Runbook de operação do Linux Server.** |
| **22** | 16/12/2026 (quarta-feira) | 4 | Usuários, grupos e permissões no Linux | **Relatório de contas, grupos e permissões, com testes de sudo.** |
| **23** | 17/12/2026 (quinta-feira) | 4 | SSH e administração remota | **Checklist de SSH seguro com testes de acesso e bloqueio de root.** |
| **24** | 25/01/2027 (segunda-feira) | 4 | DHCP no Linux | **Configuração do DHCP Linux comentada e evidência de concessão para o cliente.** |
| **25** | 26/01/2027 (terça-feira) | 4 | DNS no Linux | **Zonas BIND9 configuradas e evidências de resolução direta e reversa.** |
| **26** | 27/01/2027 (quarta-feira) | 4 | Servidor web Apache + PHP | **Aplicação PHP publicada no APP01 com evidências de acesso pelos clientes.** |
| **27** | 28/01/2027 (quinta-feira) | 4 | Banco de dados e integração da aplicação | **Aplicação integrada ao banco funcionando nos clientes, com evidências do fluxo completo.** |
| **28** | 29/01/2027 (sexta-feira) | 4 | Segurança em servidores Linux | **Relatório de auditoria de segurança com antes, depois e justificativas.** |
| **29** | 01/02/2027 (segunda-feira) | 4 | Backup, continuidade e recuperação de dados | **Plano de backup e continuidade com evidências de restauração e RPO/RTO.** |
| **30** | 02/02/2027 (terça-feira) | 5 | Monitoramento, automação e troubleshooting | **Plano de monitoramento, script de automação e registro de troubleshooting.** |
| **31** | 03/02/2027 (quarta-feira) | 5 | Governança de TI, segurança e certificações | **Dossiê de governança de TI com catálogo, riscos e roadmap de certificações.** |
| **32** | 04/02/2027 (quinta-feira) | 5 | Projeto integrador: apresentação e defesa | **Projeto integrador completo e defesa oral.** |

## Detalhamento

## Bloco 1 - Fundamentos e Planejamento

### Aula 01 - TCP/IP e IPv4 (13/11/2026 (sexta-feira))

**Objetivo:** Compreender o modelo TCP/IP e o endereçamento IPv4, criando duas VMs Windows 10 na mesma rede interna e testando a comunicação.

**Situação de aprendizagem:** Antes de instalar servidores, a equipe precisa entender como os pacotes circulam e como os endereços IP serão distribuídos na rede local.

**Tópicos:**
- Modelo TCP/IP e comparação com o modelo OSI
- Endereços IPv4: rede, host, máscara e gateway
- IPs privados, públicos e NAT
- Notação CIDR e identificação da rede
- DNS e DHCP no fluxo de configuração
- Testes com ping, ipconfig, ip e tracert

**Prática:**
Criação de duas VMs Windows 10 na mesma rede interna e teste de conectividade.

1. Criar as VMs CLI01 e CLI02 com Windows 10
2. Adicionar as duas VMs à rede interna rede-nexatech
3. Configurar IPs diferentes na mesma rede: 192.168.10.100 e 192.168.10.101
4. Testar ping entre as duas VMs nos dois sentidos
5. Registrar prints do ipconfig e do ping

**Entrega:** Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping.

**Ferramentas:** 

### Aula 02 - O servidor na rede local e a UC7 (16/11/2026 (segunda-feira))

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
Análise do cenário e linha do tempo da UC, ainda sem máquinas virtuais.

1. Inventariar os recursos e as dores da NexaTech
2. Classificar os serviços entre essenciais, importantes e opcionais
3. Montar um mapa inicial de serviços e responsáveis
4. Definir os papéis da equipe e o fluxo de documentação

**Entrega:** Diagnóstico inicial de uma página com os serviços que precisam ser centralizados.

**Ferramentas:** 

### Aula 03 - Arquitetura e topologia de rede local (17/11/2026 (terça-feira))

**Objetivo:** Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.

**Situação de aprendizagem:** A empresa ocupa dois andares, tem 45 estações, impressoras de rede, Wi-Fi para visitantes e vai receber servidores. Antes de comprar equipamentos, é preciso desenhar a topologia e definir o plano de endereços.

**Tópicos:**
- Topologias estrela, barramento, anel e malha
- Cabeamento Cat5e/Cat6, fibra óptica e patch panel
- Rack, switch, roteador, firewall e access point
- VLANs e segmentação por setor
- IPv4: endereço, máscara e notação CIDR
- IPv6 e endereçamento dual stack
- Documentação de rede e plano de IPs

**Prática:**
Projeto de topologia em paper/diagrama; a implementação em VMs ocorre na Aula 06.

1. Desenhar a topologia física e lógica da NexaTech
2. Definir a distribuição de IPs por setor
3. Montar a planilha de endereços e reservas
4. Revisar o diagrama com a turma e corrigir inconsistências

**Entrega:** Diagrama de rede e planilha de endereçamento IP da NexaTech.

**Ferramentas:** 

### Aula 04 - Protocolos e serviços de rede (18/11/2026 (quarta-feira))

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
Diagnóstico de rede no host e captura de tráfego local.

1. Testar conectividade com ping, tracert e Test-NetConnection
2. Consultar nomes com nslookup e dig
3. Observar portas abertas com netstat ou ss
4. Capturar uma requisição HTTP no Wireshark e identificar as camadas

**Entrega:** Matriz de serviços, protocolos, portas e riscos da NexaTech.

**Ferramentas:** 

### Aula 05 - Hardware de servidor, armazenamento e RAID (19/11/2026 (quinta-feira))

**Objetivo:** Especificar hardware de servidor e escolher o arranjo de armazenamento adequado, entendendo BIOS/UEFI, discos e RAID.

**Situação de aprendizagem:** O orçamento permite um servidor físico. A equipe precisa decidir CPU, memória, discos e RAID antes de comprar.

**Tópicos:**
- BIOS/UEFI, POST e CMOS
- CPU, núcleos, memória ECC e placas de rede
- Discos SAS, SATA e NVMe
- RAID 0, 1, 5, 6 e 10
- Tolerância a falhas e desempenho
- Fontes redundantes, hot swap e gerenciamento remoto

**Prática:**
Dimensionamento do servidor físico que futuramente dará lugar às VMs.

1. Comparar duas configurações de servidor com custo e desempenho
2. Calcular a capacidade útil de cada arranjo RAID
3. Escolher discos, memória e fonte com justificativa
4. Montar a planilha de especificação
5. Apresentar a proposta e os riscos

**Entrega:** Especificação técnica do servidor com justificativa de CPU, memória, discos e RAID.

**Ferramentas:** 

### Aula 06 - Virtualização e criação de VMs no VirtualBox (23/11/2026 (segunda-feira))

**Objetivo:** Entender o papel do hypervisor e criar, dimensionar e configurar as primeiras máquinas virtuais no VirtualBox.

**Situação de aprendizagem:** A NexaTech não pode comprar quatro servidores. A equipe vai usar um único computador com VirtualBox para simular a rede cliente/servidor, começando pela primeira máquina virtual.

**Tópicos:**
- Virtualização: vários sistemas isolados em um único computador
- Hypervisor tipo 1 (bare-metal) e tipo 2 (hospedado)
- VirtualBox como hypervisor tipo 2
- Recursos do host: núcleos, RAM, disco e VT-x/AMD-V
- Redes virtuais: NAT, bridge (ponte) e rede interna
- Snapshots, clones e alocação de disco

**Prática:**
Criação da primeira VM e configuração dos recursos do host.

1. Criar a VM e nomear conforme o padrão da UC
2. Destinar 2 vCPUs e 4 GB de RAM (ajustando ao host)
3. Criar disco virtual de 40 GB e revisar o tipo
4. Adicionar adaptador NAT e adaptador de rede interna
5. Iniciar a VM, testar a rede e tirar o snapshot baseline

**Entrega:** Ficha de configuração da VM (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.

**Ferramentas:** 

### Aula 07 - Planejamento, laboratório e plano diretor da rede (24/11/2026 (terça-feira))

**Objetivo:** Consolidar o plano de instalação e o plano diretor da rede, com o laboratório VirtualBox pronto e validado.

**Situação de aprendizagem:** A direção quer previsibilidade: cronograma, riscos, critérios de aceite e um laboratório que reproduza a rede antes da implantação real.

**Tópicos:**
- Requisitos, escopo, cronograma e marcos
- Licenciamento Windows Server, CALs e software livre
- Riscos, plano de reversão e critérios de aceite
- Rede interna rede-nexatech e IPs estáticos
- Snapshots e linha de base do laboratório
- Documentação: topologia, inventário e runbooks

**Prática:**
Consolidação do plano e validação do laboratório.

1. Criar a checklist de pré-instalação
2. Montar a matriz de riscos
3. Configurar a rede interna e os IPs estáticos
4. Testar conectividade e tirar snapshot baseline
5. Consolidar o plano diretor em um único documento

**Entrega:** Plano Diretor da Rede com cronograma, riscos, topologia, IPs e evidências do laboratório.

**Ferramentas:** 

## Bloco 2 - Windows Server

### Aula 08 - Instalação e configuração inicial do Windows Server (25/11/2026 (quarta-feira))

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
Instalação completa do Windows Server no laboratório virtual.

1. Instalar o Windows Server na VM do laboratório
2. Definir nome, IP estático, DNS e fuso horário
3. Executar atualizações e ativar o sistema
4. Instalar as funções iniciais e habilitar administração remota

**Entrega:** Checklist de instalação preenchida com evidências e configurações do servidor.

**Ferramentas:** 

### Aula 09 - Active Directory Domain Services (26/11/2026 (quinta-feira))

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
Domínio nexatech.local ativo com estrutura de OUs e usuários.

1. Promover o servidor a controlador do domínio nexatech.local
2. Criar OUs para Administração, Vendas, Suporte e Servidores
3. Criar usuários e grupos de segurança
4. Ingressar um cliente Windows no domínio e testar login

**Entrega:** Estrutura do Active Directory documentada e teste de login no domínio.

**Ferramentas:** 

### Aula 10 - Controlador de domínio e ingresso de clientes (27/11/2026 (sexta-feira))

**Objetivo:** Promover o Windows Server a controlador de domínio e ingressar o cliente no domínio nexatech.local.

**Situação de aprendizagem:** O Active Directory foi instalado; agora é preciso criar o domínio e provar que um cliente consegue autenticar.

**Tópicos:**
- Domínio, floresta, árvore e controlador de domínio
- DNS integrado ao AD e registros SRV
- Promoção do servidor e reinício
- Ingresso do cliente e credenciais de domínio
- Contas de computador e GPO padrão
- Diagnóstico com dcdiag e nltest

**Prática:**
Criação do domínio e ingresso do cliente Windows.

1. Verificar IP e DNS do DC01
2. Instalar a função AD DS e promover nexatech.local
3. Configurar o CLI01 com o DNS do DC01
4. Ingressar o CLI01 e fazer login com usuário do domínio
5. Validar com whoami /fqdn e registrar eventos

**Entrega:** Evidência de promoção do controlador de domínio e login do CLI01 no domínio.

**Ferramentas:** 

### Aula 11 - Unidades organizacionais, grupos e usuários (30/11/2026 (segunda-feira))

**Objetivo:** Criar a estrutura organizacional do domínio e gerenciar usuários e grupos por setor.

**Situação de aprendizagem:** A NexaTech precisa refletir seus setores no Active Directory e aplicar permissões por grupo, não por pessoa.

**Tópicos:**
- Unidades organizacionais e delegação
- Usuários, grupos de segurança e grupos de distribuição
- UPN, senha e políticas de conta
- Grupos globais, locais de domínio e universais
- Modelo AGDLP
- Menor privilégio e contas administrativas

**Prática:**
Modelagem dos setores e das contas da NexaTech.

1. Criar as OUs ADM, RH, PROD e TI
2. Criar grupos de segurança por setor
3. Criar usuários e adicionar aos grupos
4. Testar login de um usuário comum
5. Documentar a estrutura criada

**Entrega:** Estrutura de OUs, grupos e usuários documentada, com evidência de logins.

**Ferramentas:** 

### Aula 12 - DNS no Windows Server (01/12/2026 (terça-feira))

**Objetivo:** Configurar zonas DNS integradas ao Active Directory para resolver nomes dos servidores e clientes.

**Situação de aprendizagem:** Os computadores da NexaTech precisam encontrar o controlador de domínio e os serviços pelo nome; sem DNS confiável, o domínio falha de forma intermitente.

**Tópicos:**
- Zonas direta e reversa
- Registros A, AAAA, CNAME, MX e PTR
- Encaminhadores e cache
- Integração com o Active Directory
- Limpeza de registros antigos
- Testes com nslookup, dig e Resolve-DnsName

**Prática:**
Configuração e teste do DNS do domínio nexatech.local.

1. Criar a zona direta nexatech.local
2. Criar a zona reversa da faixa 192.168.10.0/24
3. Cadastrar registros de servidores e apelidos
4. Configurar encaminhadores externos
5. Testar resolução direta e reversa no cliente

**Entrega:** Plano de DNS com zonas direta e reversa, registros e evidências de resolução.

**Ferramentas:** 

### Aula 13 - DHCP no Windows Server (02/12/2026 (quarta-feira))

**Objetivo:** Configurar escopos, reservas e opções DHCP no Windows Server para entregar endereçamento à rede.

**Situação de aprendizagem:** Os clientes precisam receber IP, gateway e DNS automaticamente; configurar tudo à mão não escala.

**Tópicos:**
- Escopo, faixa e exclusões
- Opções 003, 006 e 015
- Reservas e tempo de concessão
- Autorização do DHCP no AD
- Failover e boas práticas
- Testes com ipconfig e logs

**Prática:**
Criação do escopo DHCP da LAN da NexaTech.

1. Criar o escopo 192.168.10.100-200
2. Definir gateway e DNS nas opções
3. Reservar IPs para servidores e impressoras
4. Autorizar e ativar o escopo
5. Testar a concessão em um cliente

**Entrega:** Plano de DHCP com escopo, exclusões, reservas e evidências de concessão.

**Ferramentas:** 

### Aula 14 - Compartilhamento de arquivos, permissões e quotas (03/12/2026 (quinta-feira))

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
Servidor de arquivos com pastas departamentais e permissões testadas.

1. Criar pastas por setor e compartilhar via SMB
2. Aplicar permissões NTFS usando grupos
3. Configurar quotas e cópias de sombra
4. Mapear unidades e testar acessos permitidos e negados

**Entrega:** Matriz de permissões e relatório de testes de acesso.

**Ferramentas:** 

### Aula 15 - GPOs e políticas de segurança (04/12/2026 (sexta-feira))

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
GPOs aplicadas em OUs específicas e validadas em clientes.

1. Criar GPO de política de senha e bloqueio de tela
2. Mapear unidades de rede e impressoras por setor
3. Aplicar configurações de firewall e atualizações
4. Validar com gpresult e testar com usuários de OUs diferentes

**Entrega:** Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação.

**Ferramentas:** 

## Bloco 3 - Redes, Roteamento e Firewall

### Aula 16 - Roteamento e NAT (07/12/2026 (segunda-feira))

**Objetivo:** Entender como um servidor ou firewall encaminha pacotes entre redes e aplica NAT para liberar internet.

**Situação de aprendizagem:** A rede interna não tem acesso à internet; é preciso configurar o gateway e o NAT antes de instalar o firewall dedicado.

**Tópicos:**
- Rede interna, rede externa e gateway padrão
- Roteamento estático e encaminhamento de pacotes
- NAT, PAT e MASQUERADE
- ip_forward no Linux e RRAS no Windows
- Regras de firewall e NAT
- Testes com ping, traceroute e curl

**Prática:**
Encaminhamento de pacotes e NAT de saída.

1. Habilitar ip_forward no Linux ou RRAS no Windows
2. Configurar NAT de saída na interface WAN
3. Ajustar o gateway no cliente
4. Testar internet e registrar as regras
5. Tirar snapshot da configuração

**Entrega:** Configuração de NAT aplicada e teste de internet a partir do cliente.

**Ferramentas:** 

### Aula 17 - pfSense: instalação e configuração inicial (09/12/2026 (quarta-feira))

**Objetivo:** Instalar o pfSense em uma VM com duas interfaces e configurar o acesso inicial.

**Situação de aprendizagem:** A NexaTech quer um firewall dedicado entre a LAN e a internet, com regras claras e administração centralizada.

**Tópicos:**
- pfSense como firewall e roteador baseado em FreeBSD
- Interfaces WAN e LAN
- Instalação e configuração inicial
- Endereçamento da LAN e da WAN
- Acesso web e credenciais
- Boas práticas de senha e atualização

**Prática:**
Montagem da VM do firewall e primeiros passos.

1. Baixar a ISO e criar a VM FW01
2. Adaptador 1 em NAT (WAN) e adaptador 2 na rede interna (LAN)
3. Instalar e definir as interfaces
4. Configurar o IP da LAN e acessar a interface web
5. Atualizar o pfSense e tirar snapshot

**Entrega:** pfSense instalado e acesso à interface web documentado.

**Ferramentas:** 

### Aula 18 - pfSense: firewall, NAT e liberação de internet (10/12/2026 (quinta-feira))

**Objetivo:** Configurar DHCP, regras de firewall e NAT no pfSense para liberar a navegação da LAN.

**Situação de aprendizagem:** Com o pfSense no lugar, os clientes da rede interna precisam navegar sem expor a LAN.

**Tópicos:**
- Regras na interface LAN e política padrão
- NAT de saída e aliases
- DHCP e DNS no pfSense
- Logs e diagnóstico
- Bloqueio de tráfego indesejado
- Backup da configuração

**Prática:**
Laboratório de liberação de internet através do pfSense.

1. Configurar o DHCP da LAN em 192.168.10.100-200
2. Criar regra na LAN permitindo web e DNS
3. Conferir o NAT automático de saída
4. Testar ping, curl e abrir um site no cliente
5. Conferir os logs e exportar o backup da configuração

**Entrega:** Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense.

**Ferramentas:** 

### Aula 19 - Serviços web (IIS), acesso remoto e administração (11/12/2026 (sexta-feira))

**Objetivo:** Publicar serviços web no Windows Server e configurar administração remota segura.

**Situação de aprendizagem:** Além do servidor Linux, a NexaTech quer comparar a publicação web no Windows e precisa administrar o servidor sem expor RDP ou HTTP sem proteção.

**Tópicos:**
- IIS: sites, bindings, permissões e logs
- HTTP, HTTPS e certificados TLS
- RDP: riscos e boas práticas
- VPN e acesso remoto seguro
- Windows Admin Center e PowerShell Remoting
- WinRM, firewall e menor privilégio

**Prática:**
Publicação web e administração remota no Windows Server.

1. Publicar uma intranet simples no IIS
2. Configurar HTTPS com certificado de teste
3. Restringir o RDP por firewall
4. Administrar por Windows Admin Center ou WinRM
5. Documentar portas e acessos

**Entrega:** Catálogo de serviços web no IIS + checklist de acesso remoto seguro.

**Ferramentas:** 

## Bloco 4 - Linux Server e Segurança

### Aula 20 - Instalação e configuração inicial do Ubuntu Server (14/12/2026 (segunda-feira))

**Objetivo:** Instalar o Ubuntu Server sem interface gráfica nas VMs APP01 e DB01, particionar o disco e configurar rede, SSH e atualizações.

**Situação de aprendizagem:** A NexaTech vai usar um servidor Linux de baixo custo para DNS, web e monitoramento; a instalação precisa nascer documentada e segura.

**Tópicos:**
- Ubuntu Server 24.04 LTS sem ambiente gráfico
- Particionamento EFI, /, /home e swap
- Usuários, root e sudo
- Rede estática em /etc/netplan/50-cloud-init.yaml
- Hostname, SSH e NTP
- apt update/upgrade e firewall básico

**Prática:**
Instalação do Ubuntu Server nas VMs APP01 e DB01.

1. Criar a VM com dois adaptadores (NAT e rede interna)
2. Particionar: EFI 200 MB, / 20 GB ext4, /home 25 GB ext4 e swap
3. Instalar sem ambiente gráfico
4. Configurar IP estático 192.168.10.20 e hostname
5. Instalar SSH, atualizar o sistema e configurar o ufw

**Entrega:** Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências.

**Ferramentas:** 

### Aula 21 - Administração e operação do Linux (15/12/2026 (terça-feira))

**Objetivo:** Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.

**Situação de aprendizagem:** O servidor Linux já está no ar, mas a equipe precisa de rotinas para saber O que éstá rodando, quanto disco resta, o que falhou e como agendar tarefas sem depender de lembretes.

**Tópicos:**
- APT: sources.list, update, upgrade e remoção de pacotes
- systemd: units, enable, start, status e journalctl
- Processos: ps, top, htop e kill
- Disco: df, du, lsblk, mount e LVM
- Permissões: chmod, chown e umask
- Logs em /var/log e logrotate
- cron e systemd timers
- Chaves SSH e sessões persistentes com tmux/screen

**Prática:**
Rotinas de operação e um serviço próprio rodando sob systemd.

1. Configurar os repositórios e atualizar o sistema com APT
2. Criar um serviço systemd simples
3. Agendar um backup com systemd timer
4. Analisar logs e identificar um erro
5. Verificar uso de disco e permissões de arquivos

**Entrega:** Runbook de operação do Linux Server.

**Ferramentas:** 

### Aula 22 - Usuários, grupos e permissões no Linux (16/12/2026 (quarta-feira))

**Objetivo:** Gerenciar usuários, grupos, permissões e sudo no Ubuntu Server.

**Situação de aprendizagem:** O servidor Linux terá vários serviços; é preciso separar contas e limitar acessos.

**Tópicos:**
- useradd/adduser, passwd e grupos
- chmod simbólico e octal
- chown, chgrp e umask
- sudo e menor privilégio
- /etc/passwd, /etc/group e /etc/shadow
- Permissões de dono, grupo e outros

**Prática:**
Separação de contas e permissões no servidor Linux.

1. Criar o grupo dev e os usuários devfrontend e devbackend
2. Ajustar home e permissões de /var/www/html
3. Testar leitura e escrita com cada usuário
4. Configurar sudo restrito
5. Documentar o antes e o depois

**Entrega:** Relatório de contas, grupos e permissões, com testes de sudo.

**Ferramentas:** 

### Aula 23 - SSH e administração remota (17/12/2026 (quinta-feira))

**Objetivo:** Habilitar e endurecer o SSH para administrar o servidor Linux remotamente.

**Situação de aprendizagem:** A equipe precisa administrar o servidor sem ir até o console; acesso remoto seguro é obrigatório.

**Tópicos:**
- openssh-server e sshd_config
- Autenticação por senha e por chave
- Porta, PermitRootLogin e AllowUsers
- Geração e cópia de chaves
- Fail2ban e firewall
- scp, sftp e boas práticas

**Prática:**
Acesso remoto seguro ao Ubuntu Server.

1. Instalar o openssh-server
2. Desabilitar login root e senhas vazias
3. Criar par de chaves e copiar para o servidor
4. Testar login e acesso negado
5. Registrar a configuração final

**Entrega:** Checklist de SSH seguro com testes de acesso e bloqueio de root.

**Ferramentas:** 

### Aula 24 - DHCP no Linux (25/01/2027 (segunda-feira))

**Objetivo:** Instalar e configurar o DHCP no Ubuntu Server para atender a LAN de laboratório.

**Situação de aprendizagem:** A NexaTech já usa DHCP no Windows; a equipe precisa saber operar o mesmo serviço no Linux e entender as diferenças.

**Tópicos:**
- isc-dhcp-server e Kea DHCP
- /etc/dhcp/dhcpd.conf
- Faixa, gateway e DNS
- Reservas e concessões
- Logs e diagnóstico
- Convivência com o DHCP do Windows

**Prática:**
Configuração do DHCP no Ubuntu Server.

1. Instalar o isc-dhcp-server no APP01
2. Configurar a rede 192.168.10.0/24
3. Definir faixa, gateway e DNS
4. Iniciar e habilitar o serviço
5. Testar a concessão em CLI01/CLI02 e registrar logs

**Entrega:** Configuração do DHCP Linux comentada e evidência de concessão para o cliente.

**Ferramentas:** 

### Aula 25 - DNS no Linux (26/01/2027 (terça-feira))

**Objetivo:** Instalar e configurar o BIND9 no Ubuntu Server para resolver nomes da rede.

**Situação de aprendizagem:** O DNS do Windows atende o domínio; a NexaTech quer uma alternativa Linux para entender e comparar a configuração.

**Tópicos:**
- BIND9 e named.conf
- Zonas direta e reversa
- Registros e serial
- Forwarders
- named-checkconf e named-checkzone
- Convivência com o DNS do Windows

**Prática:**
Configuração do DNS Linux com BIND9.

1. Instalar o bind9 no APP01
2. Configurar zonas para senactech.edu.br
3. Criar a zona reversa
4. Definir forwarders 8.8.8.8 e 8.8.4.4
5. Validar com named-checkzone e testar com dig

**Entrega:** Zonas BIND9 configuradas e evidências de resolução direta e reversa.

**Ferramentas:** 

### Aula 26 - Servidor web Apache + PHP (27/01/2027 (quarta-feira))

**Objetivo:** Publicar a aplicação web em Apache e PHP no Ubuntu Server.

**Situação de aprendizagem:** A NexaTech quer uma aplicação simples para a intranet no servidor Linux.

**Tópicos:**
- Apache e PHP no Ubuntu
- Virtual host e permissões
- Estrutura da aplicação
- Testes com curl e navegador
- Logs do Apache
- Boas práticas de publicação

**Prática:**
Publicação da aplicação web no APP01.

1. Instalar Apache e PHP no APP01
2. Criar o virtual host da aplicação
3. Publicar a página inicial em PHP
4. Testar pelo navegador do CLI01 e do CLI02
5. Registrar a configuração e as permissões

**Entrega:** Aplicação PHP publicada no APP01 com evidências de acesso pelos clientes.

**Ferramentas:** 

### Aula 27 - Banco de dados e integração da aplicação (28/01/2027 (quinta-feira))

**Objetivo:** Configurar o servidor de banco de dados e integrar a aplicação PHP ao DB01.

**Situação de aprendizagem:** A aplicação está publicada, mas ainda não armazena dados; a NexaTech precisa de um banco dedicado e do fluxo completo funcionando.

**Tópicos:**
- MariaDB/MySQL no Ubuntu
- Banco, usuário e permissões
- Conexão PHP + MariaDB
- Testes de leitura e escrita
- Validação nos clientes CLI01 e CLI02
- Logs do Apache e do banco

**Prática:**
Configuração do banco e integração ponta a ponta.

1. Instalar MariaDB no DB01
2. Criar banco, usuário e tabelas
3. Configurar a conexão da aplicação com o DB01
4. Testar o fluxo no CLI01 e no CLI02
5. Registrar backup inicial e documentar a arquitetura

**Entrega:** Aplicação integrada ao banco funcionando nos clientes, com evidências do fluxo completo.

**Ferramentas:** 

### Aula 28 - Segurança em servidores Linux (29/01/2027 (sexta-feira))

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
Servidor Linux endurecido e com tentativas de acesso bloqueadas.

1. Endurecer a configuração do SSH
2. Configurar firewall e fail2ban
3. Auditar usuários, permissões e serviços ativos
4. Comparar o antes e o depois com evidências

**Entrega:** Relatório de auditoria de segurança com antes, depois e justificativas.

**Ferramentas:** 

### Aula 29 - Backup, continuidade e recuperação de dados (01/02/2027 (segunda-feira))

**Objetivo:** Definir e testar a rotina de backup, restauração e continuidade dos dados do ambiente.

**Situação de aprendizagem:** A NexaTech já compartilha arquivos no Windows Server; agora precisa garantir que esses dados sobrevivam a exclusões acidentais e falhas.

**Tópicos:**
- Regra 3-2-1 e política de retenção
- Backup completo, incremental e diferencial
- rsync, tar e systemd timer
- RPO, RTO e continuidade de negócio
- Testes de restauração
- Cópia dos dados do Windows Server e do Linux

**Prática:**
Rotina de backup e restauração no ambiente misto.

1. Definir o que será copiado (pastas compartilhadas no Windows e dados do Linux)
2. Criar uma rotina de backup com rsync
3. Agendar a rotina com systemd timer
4. Simular exclusão de arquivo e restaurar a versão anterior
5. Definir RPO/RTO e documentar a retenção

**Entrega:** Plano de backup e continuidade com evidências de restauração e RPO/RTO.

**Ferramentas:** 

## Bloco 5 - Operação, Monitoramento e Projeto

### Aula 30 - Monitoramento, automação e troubleshooting (02/02/2027 (terça-feira))

**Objetivo:** Monitorar servidores, automatizar rotinas e diagnosticar falhas no ambiente integrado.

**Situação de aprendizagem:** A equipe precisa saber antes dos usuários quando um serviço cair e ter método para diagnosticar problemas de rede, DNS, aplicação e banco.

**Tópicos:**
- Métricas, logs, SNMP e SLO
- Zabbix, Prometheus e Grafana
- Fluxo DHCP -> DNS -> aplicação -> banco
- PowerShell, Task Scheduler e Event Viewer
- systemd timers e cron
- Método: sintoma, hipótese, teste e solução

**Prática:**
Monitoramento, automação e diagnóstico do ambiente.

1. Instalar o monitoramento no APP01
2. Adicionar DC01, APP01 e DB01 como hosts
3. Criar dashboard e alerta
4. Criar script/timer de verificação
5. Resolver cenários de falha e registrar o diagnóstico

**Entrega:** Plano de monitoramento, script de automação e registro de troubleshooting.

**Ferramentas:** 

### Aula 31 - Governança de TI, segurança e certificações (03/02/2027 (quarta-feira))

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
Dossiê de governança e plano de certificação.

1. Criar catálogo de serviços e matriz de riscos
2. Mapear controles de segurança e evidências
3. Comparar trilhas de certificação
4. Montar um plano de melhoria para a NexaTech

**Entrega:** Dossiê de governança de TI com catálogo, riscos e roadmap de certificações.

**Ferramentas:** 

### Aula 32 - Projeto integrador: apresentação e defesa (04/02/2027 (quinta-feira))

**Objetivo:** Apresentar e defender o projeto completo de rede cliente/servidor da NexaTech, com evidências de instalação, configuração e monitoramento.

**Situação de aprendizagem:** É o dia da entrega final. A banca representa a direção da NexaTech e vai avaliar se a rede planejada, instalada, configurada e monitorada atende aos requisitos da empresa.

**Tópicos:**
- Síntese dos cinco blocos
- Pacote de documentação do projeto
- Demonstração do ambiente e das evidências
- Métricas de funcionamento e monitoramento
- Lições aprendidas e próximos passos
- Comunicação técnica e arguição

**Prática:**
Demonstração final do ambiente integrado.

1. Apresentar o projeto em 10 a 15 minutos
2. Demonstrar login, DNS/DHCP, arquivos, web, pfSense e monitoramento
3. Responder à arguição da banca
4. Entregar a documentação final e a autoavaliação

**Entrega:** Projeto integrador completo e defesa oral.

**Ferramentas:** 
