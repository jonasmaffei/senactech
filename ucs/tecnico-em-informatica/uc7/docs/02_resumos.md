# Resumos Consolidados - UC7

> Resumos das 32 aulas. Use como revisão rápida antes das atividades e do projeto integrador.

## Aula 01 - TCP/IP e IPv4

Compreender o modelo TCP/IP e o endereçamento IPv4, criando duas VMs Windows 10 na mesma rede interna e testando a comunicação.

Antes de instalar servidores, a equipe precisa entender como os pacotes circulam e como os endereços IP serão distribuídos na rede local.

**Conceitos principais:** Modelo TCP/IP e comparação com o modelo OSI; Endereços IPv4: rede, host, máscara e gateway; IPs privados, públicos e NAT; Notação CIDR e identificação da rede; DNS e DHCP no fluxo de configuração.

**Entrega:** Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping.

## Aula 02 - O servidor na rede local e a UC7

Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e o cenário que conduzirá a UC7.

A NexaTech Soluções Digitais tem 45 colaboradores em dois andares. Hoje os arquivos ficam em um computador comum, não há autenticação centralizada e as falhas de rede são resolvidas no improviso. A direção contratou você para planejar, instalar, configurar e monitorar a nova infraestrutura de servidores.

**Conceitos principais:** Modelo cliente/servidor e redes peer-to-peer; Tipos de servidor: arquivos, autenticação, DNS, DHCP, web, banco, virtualização e nuvem; Serviços essenciais de uma LAN corporativa; On-premise, nuvem e ambiente híbrido; Ciclo de vida: planejar, instalar, configurar, monitorar e manter.

**Entrega:** Diagnóstico inicial de uma página com os serviços que precisam ser centralizados.

## Aula 03 - Arquitetura e topologia de rede local

Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.

A empresa ocupa dois andares, tem 45 estações, impressoras de rede, Wi-Fi para visitantes e vai receber servidores. Antes de comprar equipamentos, é preciso desenhar a topologia e definir o plano de endereços.

**Conceitos principais:** Topologias estrela, barramento, anel e malha; Cabeamento Cat5e/Cat6, fibra óptica e patch panel; Rack, switch, roteador, firewall e access point; VLANs e segmentação por setor; IPv4: endereço, máscara e notação CIDR.

**Entrega:** Diagrama de rede e planilha de endereçamento IP da NexaTech.

## Aula 04 - Protocolos e serviços de rede

Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.

A equipe precisa definir quais serviços rodarão nos servidores e quais portas deverão ser liberadas no firewall. Um erro nessa matriz pode deixar a rede insegura ou quebrar serviços essenciais.

**Conceitos principais:** Modelo OSI e pilha TCP/IP; TCP versus UDP; Portas essenciais: DNS 53, DHCP 67/68, HTTP 80, HTTPS 443, SMB 445, SSH 22, RDP 3389, LDAP 389/636; DNS: hierarquia, tipos de registro e resolução; DHCP: descoberta, oferta, requisição e confirmação.

**Entrega:** Matriz de serviços, protocolos, portas e riscos da NexaTech.

## Aula 05 - Hardware de servidor, armazenamento e RAID

Especificar hardware de servidor e escolher o arranjo de armazenamento adequado, entendendo BIOS/UEFI, discos e RAID.

O orçamento permite um servidor físico. A equipe precisa decidir CPU, memória, discos e RAID antes de comprar.

**Conceitos principais:** BIOS/UEFI, POST e CMOS; CPU, núcleos, memória ECC e placas de rede; Discos SAS, SATA e NVMe; RAID 0, 1, 5, 6 e 10; Tolerância a falhas e desempenho.

**Entrega:** Especificação técnica do servidor com justificativa de CPU, memória, discos e RAID.

## Aula 06 - Virtualização e criação de VMs no VirtualBox

Entender o papel do hypervisor e criar, dimensionar e configurar as primeiras máquinas virtuais no VirtualBox.

A NexaTech não pode comprar quatro servidores. A equipe vai usar um único computador com VirtualBox para simular a rede cliente/servidor, começando pela primeira máquina virtual.

**Conceitos principais:** Virtualização: vários sistemas isolados em um único computador; Hypervisor tipo 1 (bare-metal) e tipo 2 (hospedado); VirtualBox como hypervisor tipo 2; Recursos do host: núcleos, RAM, disco e VT-x/AMD-V; Redes virtuais: NAT, bridge (ponte) e rede interna.

**Entrega:** Ficha de configuração da VM (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.

## Aula 07 - Planejamento, laboratório e plano diretor da rede

Consolidar o plano de instalação e o plano diretor da rede, com o laboratório VirtualBox pronto e validado.

A direção quer previsibilidade: cronograma, riscos, critérios de aceite e um laboratório que reproduza a rede antes da implantação real.

**Conceitos principais:** Requisitos, escopo, cronograma e marcos; Licenciamento Windows Server, CALs e software livre; Riscos, plano de reversão e critérios de aceite; Rede interna rede-nexatech e IPs estáticos; Snapshots e linha de base do laboratório.

**Entrega:** Plano Diretor da Rede com cronograma, riscos, topologia, IPs e evidências do laboratório.

## Aula 08 - Instalação e configuração inicial do Windows Server

Instalar o Windows Server e executar a configuração inicial segura do servidor.

O primeiro servidor da NexaTech será o controlador de domínio e servidor de arquivos. A instalação precisa sair do padrão inseguro de fábrica e já nascer com nome, rede, atualizações e administração remota definidos.

**Conceitos principais:** Edições Standard e Datacenter; Desktop Experience versus Server Core; Requisitos de hardware e virtualização; Instalação e configuração pós-instalação; Nome do host, fuso horário, rede estática e ativação.

**Entrega:** Checklist de instalação preenchida com evidências e configurações do servidor.

## Aula 09 - Active Directory Domain Services

Configurar o Active Directory, criar a estrutura organizacional e gerenciar usuários e grupos.

A NexaTech quer centralizar o login e as permissões. Hoje cada computador tem contas locais e ninguém sabe quem acessou o quê. O domínio precisa refletir os setores e as regras da empresa.

**Conceitos principais:** Conceitos de domínio, floresta, árvore e controlador de domínio; LDAP, Kerberos e dependência do DNS; Promoção do servidor a controlador de domínio; Unidades organizacionais por setor; Usuários, grupos, UPN e políticas de senha.

**Entrega:** Estrutura do Active Directory documentada e teste de login no domínio.

## Aula 10 - Controlador de domínio e ingresso de clientes

Promover o Windows Server a controlador de domínio e ingressar o cliente no domínio nexatech.local.

O Active Directory foi instalado; agora é preciso criar o domínio e provar que um cliente consegue autenticar.

**Conceitos principais:** Domínio, floresta, árvore e controlador de domínio; DNS integrado ao AD e registros SRV; Promoção do servidor e reinício; Ingresso do cliente e credenciais de domínio; Contas de computador e GPO padrão.

**Entrega:** Evidência de promoção do controlador de domínio e login do CLI01 no domínio.

## Aula 11 - Unidades organizacionais, grupos e usuários

Criar a estrutura organizacional do domínio e gerenciar usuários e grupos por setor.

A NexaTech precisa refletir seus setores no Active Directory e aplicar permissões por grupo, não por pessoa.

**Conceitos principais:** Unidades organizacionais e delegação; Usuários, grupos de segurança e grupos de distribuição; UPN, senha e políticas de conta; Grupos globais, locais de domínio e universais; Modelo AGDLP.

**Entrega:** Estrutura de OUs, grupos e usuários documentada, com evidência de logins.

## Aula 12 - DNS no Windows Server

Configurar zonas DNS integradas ao Active Directory para resolver nomes dos servidores e clientes.

Os computadores da NexaTech precisam encontrar o controlador de domínio e os serviços pelo nome; sem DNS confiável, o domínio falha de forma intermitente.

**Conceitos principais:** Zonas direta e reversa; Registros A, AAAA, CNAME, MX e PTR; Encaminhadores e cache; Integração com o Active Directory; Limpeza de registros antigos.

**Entrega:** Plano de DNS com zonas direta e reversa, registros e evidências de resolução.

## Aula 13 - DHCP no Windows Server

Configurar escopos, reservas e opções DHCP no Windows Server para entregar endereçamento à rede.

Os clientes precisam receber IP, gateway e DNS automaticamente; configurar tudo à mão não escala.

**Conceitos principais:** Escopo, faixa e exclusões; Opções 003, 006 e 015; Reservas e tempo de concessão; Autorização do DHCP no AD; Failover e boas práticas.

**Entrega:** Plano de DHCP com escopo, exclusões, reservas e evidências de concessão.

## Aula 14 - Compartilhamento de arquivos, permissões e quotas

Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.

A NexaTech guarda contratos, propostas e documentos fiscais em uma pasta compartilhada sem controle. A diretoria quer acesso por setor, rastreabilidade e possibilidade de recuperar arquivos apagados.

**Conceitos principais:** SMB e compartilhamentos de rede; Permissões de compartilhamento versus NTFS; Herança, acesso efetivo e princípio do menor privilégio; Modelo AGDLP: contas, grupos globais, grupos locais de domínio e permissões; Quotas e File Server Resource Manager.

**Entrega:** Matriz de permissões e relatório de testes de acesso.

## Aula 15 - GPOs e políticas de segurança

Aplicar políticas de grupo para padronizar segurança e configurações nos clientes do domínio.

A auditoria interna apontou senhas fracas, telas que não bloqueiam e unidades de rede mapeadas manualmente. A equipe precisa padronizar isso sem visitar cada computador.

**Conceitos principais:** Objetos de GPO, escopo e herança; Ordem de precedência e filtragem de segurança; Política de senha e bloqueio de conta; Firewall, atualizações e restrições de software; Mapeamento de unidades e impressoras.

**Entrega:** Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação.

## Aula 16 - Roteamento e NAT

Entender como um servidor ou firewall encaminha pacotes entre redes e aplica NAT para liberar internet.

A rede interna não tem acesso à internet; é preciso configurar o gateway e o NAT antes de instalar o firewall dedicado.

**Conceitos principais:** Rede interna, rede externa e gateway padrão; Roteamento estático e encaminhamento de pacotes; NAT, PAT e MASQUERADE; ip_forward no Linux e RRAS no Windows; Regras de firewall e NAT.

**Entrega:** Configuração de NAT aplicada e teste de internet a partir do cliente.

## Aula 17 - pfSense: instalação e configuração inicial

Instalar o pfSense em uma VM com duas interfaces e configurar o acesso inicial.

A NexaTech quer um firewall dedicado entre a LAN e a internet, com regras claras e administração centralizada.

**Conceitos principais:** pfSense como firewall e roteador baseado em FreeBSD; Interfaces WAN e LAN; Instalação e configuração inicial; Endereçamento da LAN e da WAN; Acesso web e credenciais.

**Entrega:** pfSense instalado e acesso à interface web documentado.

## Aula 18 - pfSense: firewall, NAT e liberação de internet

Configurar DHCP, regras de firewall e NAT no pfSense para liberar a navegação da LAN.

Com o pfSense no lugar, os clientes da rede interna precisam navegar sem expor a LAN.

**Conceitos principais:** Regras na interface LAN e política padrão; NAT de saída e aliases; DHCP e DNS no pfSense; Logs e diagnóstico; Bloqueio de tráfego indesejado.

**Entrega:** Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense.

## Aula 19 - Serviços web (IIS), acesso remoto e administração

Publicar serviços web no Windows Server e configurar administração remota segura.

Além do servidor Linux, a NexaTech quer comparar a publicação web no Windows e precisa administrar o servidor sem expor RDP ou HTTP sem proteção.

**Conceitos principais:** IIS: sites, bindings, permissões e logs; HTTP, HTTPS e certificados TLS; RDP: riscos e boas práticas; VPN e acesso remoto seguro; Windows Admin Center e PowerShell Remoting.

**Entrega:** Catálogo de serviços web no IIS + checklist de acesso remoto seguro.

## Aula 20 - Instalação e configuração inicial do Ubuntu Server

Instalar o Ubuntu Server sem interface gráfica nas VMs APP01 e DB01, particionar o disco e configurar rede, SSH e atualizações.

A NexaTech vai usar um servidor Linux de baixo custo para DNS, web e monitoramento; a instalação precisa nascer documentada e segura.

**Conceitos principais:** Ubuntu Server 24.04 LTS sem ambiente gráfico; Particionamento EFI, /, /home e swap; Usuários, root e sudo; Rede estática em /etc/netplan/50-cloud-init.yaml; Hostname, SSH e NTP.

**Entrega:** Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências.

## Aula 21 - Administração e operação do Linux

Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.

O servidor Linux já está no ar, mas a equipe precisa de rotinas para saber O que éstá rodando, quanto disco resta, o que falhou e como agendar tarefas sem depender de lembretes.

**Conceitos principais:** APT: sources.list, update, upgrade e remoção de pacotes; systemd: units, enable, start, status e journalctl; Processos: ps, top, htop e kill; Disco: df, du, lsblk, mount e LVM; Permissões: chmod, chown e umask.

**Entrega:** Runbook de operação do Linux Server.

## Aula 22 - Usuários, grupos e permissões no Linux

Gerenciar usuários, grupos, permissões e sudo no Ubuntu Server.

O servidor Linux terá vários serviços; é preciso separar contas e limitar acessos.

**Conceitos principais:** useradd/adduser, passwd e grupos; chmod simbólico e octal; chown, chgrp e umask; sudo e menor privilégio; /etc/passwd, /etc/group e /etc/shadow.

**Entrega:** Relatório de contas, grupos e permissões, com testes de sudo.

## Aula 23 - SSH e administração remota

Habilitar e endurecer o SSH para administrar o servidor Linux remotamente.

A equipe precisa administrar o servidor sem ir até o console; acesso remoto seguro é obrigatório.

**Conceitos principais:** openssh-server e sshd_config; Autenticação por senha e por chave; Porta, PermitRootLogin e AllowUsers; Geração e cópia de chaves; Fail2ban e firewall.

**Entrega:** Checklist de SSH seguro com testes de acesso e bloqueio de root.

## Aula 24 - DHCP no Linux

Instalar e configurar o DHCP no Ubuntu Server para atender a LAN de laboratório.

A NexaTech já usa DHCP no Windows; a equipe precisa saber operar o mesmo serviço no Linux e entender as diferenças.

**Conceitos principais:** isc-dhcp-server e Kea DHCP; /etc/dhcp/dhcpd.conf; Faixa, gateway e DNS; Reservas e concessões; Logs e diagnóstico.

**Entrega:** Configuração do DHCP Linux comentada e evidência de concessão para o cliente.

## Aula 25 - DNS no Linux

Instalar e configurar o BIND9 no Ubuntu Server para resolver nomes da rede.

O DNS do Windows atende o domínio; a NexaTech quer uma alternativa Linux para entender e comparar a configuração.

**Conceitos principais:** BIND9 e named.conf; Zonas direta e reversa; Registros e serial; Forwarders; named-checkconf e named-checkzone.

**Entrega:** Zonas BIND9 configuradas e evidências de resolução direta e reversa.

## Aula 26 - Servidor web Apache + PHP

Publicar a aplicação web em Apache e PHP no Ubuntu Server.

A NexaTech quer uma aplicação simples para a intranet no servidor Linux.

**Conceitos principais:** Apache e PHP no Ubuntu; Virtual host e permissões; Estrutura da aplicação; Testes com curl e navegador; Logs do Apache.

**Entrega:** Aplicação PHP publicada no APP01 com evidências de acesso pelos clientes.

## Aula 27 - Banco de dados e integração da aplicação

Configurar o servidor de banco de dados e integrar a aplicação PHP ao DB01.

A aplicação está publicada, mas ainda não armazena dados; a NexaTech precisa de um banco dedicado e do fluxo completo funcionando.

**Conceitos principais:** MariaDB/MySQL no Ubuntu; Banco, usuário e permissões; Conexão PHP + MariaDB; Testes de leitura e escrita; Validação nos clientes CLI01 e CLI02.

**Entrega:** Aplicação integrada ao banco funcionando nos clientes, com evidências do fluxo completo.

## Aula 28 - Segurança em servidores Linux

Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.

A NexaTech sofreu tentativas de acesso SSH e precisa provar à diretoria que o servidor Linux está protegido. A auditoria vai verificar usuários, firewall, atualizações e logs.

**Conceitos principais:** Checklist de hardening e CIS Benchmarks; Atualizações e remoção de serviços desnecessários; sudo, menor privilégio e contas de serviço; SSH seguro: chaves, root desabilitado e fail2ban; Firewall com ufw, nftables ou firewalld.

**Entrega:** Relatório de auditoria de segurança com antes, depois e justificativas.

## Aula 29 - Backup, continuidade e recuperação de dados

Definir e testar a rotina de backup, restauração e continuidade dos dados do ambiente.

A NexaTech já compartilha arquivos no Windows Server; agora precisa garantir que esses dados sobrevivam a exclusões acidentais e falhas.

**Conceitos principais:** Regra 3-2-1 e política de retenção; Backup completo, incremental e diferencial; rsync, tar e systemd timer; RPO, RTO e continuidade de negócio; Testes de restauração.

**Entrega:** Plano de backup e continuidade com evidências de restauração e RPO/RTO.

## Aula 30 - Monitoramento, automação e troubleshooting

Monitorar servidores, automatizar rotinas e diagnosticar falhas no ambiente integrado.

A equipe precisa saber antes dos usuários quando um serviço cair e ter método para diagnosticar problemas de rede, DNS, aplicação e banco.

**Conceitos principais:** Métricas, logs, SNMP e SLO; Zabbix, Prometheus e Grafana; Fluxo DHCP -> DNS -> aplicação -> banco; PowerShell, Task Scheduler e Event Viewer; systemd timers e cron.

**Entrega:** Plano de monitoramento, script de automação e registro de troubleshooting.

## Aula 31 - Governança de TI, segurança e certificações

Aplicar conceitos de governança e segurança na administração dos servidores e planejar certificações.

A NexaTech vai passar por uma auditoria de segurança e quer organizar processos. A equipe precisa demonstrar controle sobre ativos, mudanças, incidentes e acessos.

**Conceitos principais:** ITIL 4: catálogo de serviços, incidentes, problemas e mudanças; COBIT e alinhamento com o negócio; ISO/IEC 27001 e gestão de riscos; LGPD e privacidade; Gestão de ativos, acessos, fornecedores e auditoria.

**Entrega:** Dossiê de governança de TI com catálogo, riscos e roadmap de certificações.

## Aula 32 - Projeto integrador: apresentação e defesa

Apresentar e defender o projeto completo de rede cliente/servidor da NexaTech, com evidências de instalação, configuração e monitoramento.

É o dia da entrega final. A banca representa a direção da NexaTech e vai avaliar se a rede planejada, instalada, configurada e monitorada atende aos requisitos da empresa.

**Conceitos principais:** Síntese dos cinco blocos; Pacote de documentação do projeto; Demonstração do ambiente e das evidências; Métricas de funcionamento e monitoramento; Lições aprendidas e próximos passos.

**Entrega:** Projeto integrador completo e defesa oral.
