# Timeline de Engenharia - UC7

## A cadeia causal da infraestrutura de servidores

> Cada aula resolve o gargalo da anterior, do TCP/IP à operação monitorada de um ambiente Windows/Linux com firewall pfSense.

```text
BLOCO 1 - FUNDAMENTOS E PLANEJAMENTO
A01 TCP/IP e IPv4 -> A02 O servidor na rede local e a UC7 -> A03 Arquitetura e topologia de rede local -> A04 Protocolos e serviços de rede -> A05 Hardware de servidor, armazenamento e RAID -> A06 Virtualização e criação de VMs no VirtualBox -> A07 Planejamento, laboratório e plano diretor da rede

BLOCO 2 - WINDOWS SERVER
A08 Instalação e configuração inicial do Windows Server -> A09 Active Directory Domain Services -> A10 Controlador de domínio e ingresso de clientes -> A11 Unidades organizacionais, grupos e usuários -> A12 DNS no Windows Server -> A13 DHCP no Windows Server -> A14 Compartilhamento de arquivos, permissões e quotas -> A15 GPOs e políticas de segurança

BLOCO 3 - REDES, ROTEAMENTO E FIREWALL
A16 Roteamento e NAT -> A17 pfSense: instalação e configuração inicial -> A18 pfSense: firewall, NAT e liberação de internet -> A19 Serviços web (IIS), acesso remoto e administração

BLOCO 4 - LINUX SERVER E SEGURANÇA
A20 Instalação e configuração inicial do Ubuntu Server -> A21 Administração e operação do Linux -> A22 Usuários, grupos e permissões no Linux -> A23 SSH e administração remota -> A24 DHCP no Linux -> A25 DNS no Linux -> A26 Servidor web Apache + PHP -> A27 Banco de dados e integração da aplicação -> A28 Segurança em servidores Linux -> A29 Backup, continuidade e recuperação de dados

BLOCO 5 - OPERAÇÃO, MONITORAMENTO E PROJETO
A30 Monitoramento, automação e troubleshooting -> A31 Governança de TI, segurança e certificações -> A32 Projeto integrador: apresentação e defesa

```

## Bloco 1 - Fundamentos e Planejamento

### Aula 01 - TCP/IP e IPv4
* **Conceito/fundamento:** Modelo TCP/IP e comparação com o modelo OSI; Endereços IPv4: rede, host, máscara e gateway; IPs privados, públicos e NAT; Notação CIDR e identificação da rede.
* **O que se aprende:** Compreender o modelo TCP/IP e o endereçamento IPv4, criando duas VMs Windows 10 na mesma rede interna e testando a comunicação.
* **Problema em aberto:** Com os conceitos entendidos, é preciso definir o papel de cada servidor.
* **Impacto de negócio:** Um plano de IP correto evita conflitos e facilita a instalação dos servidores.

### Aula 02 - O servidor na rede local e a UC7
* **Conceito/fundamento:** Modelo cliente/servidor e redes peer-to-peer; Tipos de servidor: arquivos, autenticação, DNS, DHCP, web, banco, virtualização e nuvem; Serviços essenciais de uma LAN corporativa; On-premise, nuvem e ambiente híbrido.
* **O que se aprende:** Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e o cenário que conduzirá a UC7.
* **Problema em aberto:** Quais serviços serão necessários e como eles se conectam fisicamente?
* **Impacto de negócio:** Evita compras e instalações sem critério, reduzindo custo e retrabalho.

### Aula 03 - Arquitetura e topologia de rede local
* **Conceito/fundamento:** Topologias estrela, barramento, anel e malha; Cabeamento Cat5e/Cat6, fibra óptica e patch panel; Rack, switch, roteador, firewall e access point; VLANs e segmentação por setor.
* **O que se aprende:** Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.
* **Problema em aberto:** Uma rede desenhada ainda precisa de protocolos e serviços definidos para funcionar.
* **Impacto de negócio:** Um plano de IP e VLAN bem feito evita conflitos, lentidão e falhas de segurança.

### Aula 04 - Protocolos e serviços de rede
* **Conceito/fundamento:** Modelo OSI e pilha TCP/IP; TCP versus UDP; Portas essenciais: DNS 53, DHCP 67/68, HTTP 80, HTTPS 443, SMB 445, SSH 22, RDP 3389, LDAP 389/636; DNS: hierarquia, tipos de registro e resolução.
* **O que se aprende:** Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.
* **Problema em aberto:** Os protocolos definem o quê; falta decidir em qual hardware e com qual grau de virtualização isso rodará.
* **Impacto de negócio:** Uma matriz de portas correta reduz indisponibilidade e exposição desnecessária.

### Aula 05 - Hardware de servidor, armazenamento e RAID
* **Conceito/fundamento:** BIOS/UEFI, POST e CMOS; CPU, núcleos, memória ECC e placas de rede; Discos SAS, SATA e NVMe; RAID 0, 1, 5, 6 e 10.
* **O que se aprende:** Especificar hardware de servidor e escolher o arranjo de armazenamento adequado, entendendo BIOS/UEFI, discos e RAID.
* **Problema em aberto:** Com o hardware definido, é preciso virtualizar para aproveitar melhor a capacidade.
* **Impacto de negócio:** Dimensionamento correto evita gasto excessivo e gargalos previsíveis.

### Aula 06 - Virtualização e criação de VMs no VirtualBox
* **Conceito/fundamento:** Virtualização: vários sistemas isolados em um único computador; Hypervisor tipo 1 (bare-metal) e tipo 2 (hospedado); VirtualBox como hypervisor tipo 2; Recursos do host: núcleos, RAM, disco e VT-x/AMD-V.
* **O que se aprende:** Entender o papel do hypervisor e criar, dimensionar e configurar as primeiras máquinas virtuais no VirtualBox.
* **Problema em aberto:** Definir quantas VMs o host suporta e como a rede interna será montada.
* **Impacto de negócio:** Reduz custo de hardware e permite errar sem comprometer o computador real.

### Aula 07 - Planejamento, laboratório e plano diretor da rede
* **Conceito/fundamento:** Requisitos, escopo, cronograma e marcos; Licenciamento Windows Server, CALs e software livre; Riscos, plano de reversão e critérios de aceite; Rede interna rede-nexatech e IPs estáticos.
* **O que se aprende:** Consolidar o plano de instalação e o plano diretor da rede, com o laboratório VirtualBox pronto e validado.
* **Problema em aberto:** Com a rede planejada e o laboratório pronto, o próximo passo é instalar o Windows Server.
* **Impacto de negócio:** Planejamento reduz paradas, retrabalho e gastos não previstos.

## Bloco 2 - Windows Server

### Aula 08 - Instalação e configuração inicial do Windows Server
* **Conceito/fundamento:** Edições Standard e Datacenter; Desktop Experience versus Server Core; Requisitos de hardware e virtualização; Instalação e configuração pós-instalação.
* **O que se aprende:** Instalar o Windows Server e executar a configuração inicial segura do servidor.
* **Problema em aberto:** Um servidor isolado não autentica ninguém; é preciso criar o domínio.
* **Impacto de negócio:** Uma instalação padronizada reduz falhas e facilita suporte e auditoria.

### Aula 09 - Active Directory Domain Services
* **Conceito/fundamento:** Conceitos de domínio, floresta, árvore e controlador de domínio; LDAP, Kerberos e dependência do DNS; Promoção do servidor a controlador de domínio; Unidades organizacionais por setor.
* **O que se aprende:** Configurar o Active Directory, criar a estrutura organizacional e gerenciar usuários e grupos.
* **Problema em aberto:** O domínio precisa de DNS confiável e de endereçamento automático para os clientes.
* **Impacto de negócio:** Autenticação centralizada reduz contas soltas e facilita desligamentos e auditorias.

### Aula 10 - Controlador de domínio e ingresso de clientes
* **Conceito/fundamento:** Domínio, floresta, árvore e controlador de domínio; DNS integrado ao AD e registros SRV; Promoção do servidor e reinício; Ingresso do cliente e credenciais de domínio.
* **O que se aprende:** Promover o Windows Server a controlador de domínio e ingressar o cliente no domínio nexatech.local.
* **Problema em aberto:** Organizar setores, usuários e grupos dentro do domínio recém-criado.
* **Impacto de negócio:** Centraliza a autenticação e elimina contas locais espalhadas pela empresa.

### Aula 11 - Unidades organizacionais, grupos e usuários
* **Conceito/fundamento:** Unidades organizacionais e delegação; Usuários, grupos de segurança e grupos de distribuição; UPN, senha e políticas de conta; Grupos globais, locais de domínio e universais.
* **O que se aprende:** Criar a estrutura organizacional do domínio e gerenciar usuários e grupos por setor.
* **Problema em aberto:** Publicar serviços de rede que dependem do domínio: DNS e DHCP.
* **Impacto de negócio:** Permite aplicar regras por setor e reduz o esforço de administração.

### Aula 12 - DNS no Windows Server
* **Conceito/fundamento:** Zonas direta e reversa; Registros A, AAAA, CNAME, MX e PTR; Encaminhadores e cache; Integração com o Active Directory.
* **O que se aprende:** Configurar zonas DNS integradas ao Active Directory para resolver nomes dos servidores e clientes.
* **Problema em aberto:** Entregar endereçamento automático aos clientes com DHCP.
* **Impacto de negócio:** Resolução de nomes confiável é pré-requisito para domínio, arquivos e web.

### Aula 13 - DHCP no Windows Server
* **Conceito/fundamento:** Escopo, faixa e exclusões; Opções 003, 006 e 015; Reservas e tempo de concessão; Autorização do DHCP no AD.
* **O que se aprende:** Configurar escopos, reservas e opções DHCP no Windows Server para entregar endereçamento à rede.
* **Problema em aberto:** Controlar o acesso aos dados compartilhados com permissões adequadas.
* **Impacto de negócio:** Reduz trabalho manual e evita erros de configuração nos clientes.

### Aula 14 - Compartilhamento de arquivos, permissões e quotas
* **Conceito/fundamento:** SMB e compartilhamentos de rede; Permissões de compartilhamento versus NTFS; Herança, acesso efetivo e princípio do menor privilégio; Modelo AGDLP: contas, grupos globais, grupos locais de domínio e permissões.
* **O que se aprende:** Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.
* **Problema em aberto:** As permissões estão corretas, mas precisam ser aplicadas de forma padronizada em todos os computadores.
* **Impacto de negócio:** Controle de acesso a arquivos reduz vazamentos, perdas e retrabalho jurídico.

### Aula 15 - GPOs e políticas de segurança
* **Conceito/fundamento:** Objetos de GPO, escopo e herança; Ordem de precedência e filtragem de segurança; Política de senha e bloqueio de conta; Firewall, atualizações e restrições de software.
* **O que se aprende:** Aplicar políticas de grupo para padronizar segurança e configurações nos clientes do domínio.
* **Problema em aberto:** O ambiente interno está padronizado; falta publicar serviços e permitir administração remota segura.
* **Impacto de negócio:** Políticas centralizadas reduzem falhas humanas e custo de suporte.

## Bloco 3 - Redes, Roteamento e Firewall

### Aula 16 - Roteamento e NAT
* **Conceito/fundamento:** Rede interna, rede externa e gateway padrão; Roteamento estático e encaminhamento de pacotes; NAT, PAT e MASQUERADE; ip_forward no Linux e RRAS no Windows.
* **O que se aprende:** Entender como um servidor ou firewall encaminha pacotes entre redes e aplica NAT para liberar internet.
* **Problema em aberto:** Centralizar as regras em um firewall dedicado e auditável.
* **Impacto de negócio:** Permite que a rede interna use a internet sem endereços públicos.

### Aula 17 - pfSense: instalação e configuração inicial
* **Conceito/fundamento:** pfSense como firewall e roteador baseado em FreeBSD; Interfaces WAN e LAN; Instalação e configuração inicial; Endereçamento da LAN e da WAN.
* **O que se aprende:** Instalar o pfSense em uma VM com duas interfaces e configurar o acesso inicial.
* **Problema em aberto:** Configurar DHCP, regras e NAT para liberar a navegação com segurança.
* **Impacto de negócio:** Centraliza a proteção e a auditoria do tráfego da rede.

### Aula 18 - pfSense: firewall, NAT e liberação de internet
* **Conceito/fundamento:** Regras na interface LAN e política padrão; NAT de saída e aliases; DHCP e DNS no pfSense; Logs e diagnóstico.
* **O que se aprende:** Configurar DHCP, regras de firewall e NAT no pfSense para liberar a navegação da LAN.
* **Problema em aberto:** Integrar o firewall ao restante do ambiente e documentar o acesso remoto seguro.
* **Impacto de negócio:** Libera a navegação com regras explícitas, logs e possibilidade de auditoria.

### Aula 19 - Serviços web (IIS), acesso remoto e administração
* **Conceito/fundamento:** IIS: sites, bindings, permissões e logs; HTTP, HTTPS e certificados TLS; RDP: riscos e boas práticas; VPN e acesso remoto seguro.
* **O que se aprende:** Publicar serviços web no Windows Server e configurar administração remota segura.
* **Problema em aberto:** Com os serviços web e o acesso remoto entendidos, começa o servidor Linux da aplicação.
* **Impacto de negócio:** Permite comparar as duas plataformas e escolher com critério.

## Bloco 4 - Linux Server e Segurança

### Aula 20 - Instalação e configuração inicial do Ubuntu Server
* **Conceito/fundamento:** Ubuntu Server 24.04 LTS sem ambiente gráfico; Particionamento EFI, /, /home e swap; Usuários, root e sudo; Rede estática em /etc/netplan/50-cloud-init.yaml.
* **O que se aprende:** Instalar o Ubuntu Server sem interface gráfica nas VMs APP01 e DB01, particionar o disco e configurar rede, SSH e atualizações.
* **Problema em aberto:** Aprender a operar serviços, processos, logs e agendamentos.
* **Impacto de negócio:** Padroniza a instalação e reduz erros na operação do servidor Linux.

### Aula 21 - Administração e operação do Linux
* **Conceito/fundamento:** APT: sources.list, update, upgrade e remoção de pacotes; systemd: units, enable, start, status e journalctl; Processos: ps, top, htop e kill; Disco: df, du, lsblk, mount e LVM.
* **O que se aprende:** Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.
* **Problema em aberto:** Com a operação sob controle, é hora de publicar os serviços de rede no Linux.
* **Impacto de negócio:** Rotinas documentadas reduzem dependência de pessoas e tempo de recuperação.

### Aula 22 - Usuários, grupos e permissões no Linux
* **Conceito/fundamento:** useradd/adduser, passwd e grupos; chmod simbólico e octal; chown, chgrp e umask; sudo e menor privilégio.
* **O que se aprende:** Gerenciar usuários, grupos, permissões e sudo no Ubuntu Server.
* **Problema em aberto:** Habilitar administração remota segura para operar o servidor.
* **Impacto de negócio:** Reduz o impacto de erros e de contas comprometidas.

### Aula 23 - SSH e administração remota
* **Conceito/fundamento:** openssh-server e sshd_config; Autenticação por senha e por chave; Porta, PermitRootLogin e AllowUsers; Geração e cópia de chaves.
* **O que se aprende:** Habilitar e endurecer o SSH para administrar o servidor Linux remotamente.
* **Problema em aberto:** Endurecer o restante do servidor e revisar os serviços expostos.
* **Impacto de negócio:** Permite operação remota sem expor credenciais frágeis.

### Aula 24 - DHCP no Linux
* **Conceito/fundamento:** isc-dhcp-server e Kea DHCP; /etc/dhcp/dhcpd.conf; Faixa, gateway e DNS; Reservas e concessões.
* **O que se aprende:** Instalar e configurar o DHCP no Ubuntu Server para atender a LAN de laboratório.
* **Problema em aberto:** O próximo serviço espelhado é o DNS.
* **Impacto de negócio:** Dá autonomia para operar o mesmo serviço em Windows e Linux.

### Aula 25 - DNS no Linux
* **Conceito/fundamento:** BIND9 e named.conf; Zonas direta e reversa; Registros e serial; Forwarders.
* **O que se aprende:** Instalar e configurar o BIND9 no Ubuntu Server para resolver nomes da rede.
* **Problema em aberto:** Com DNS e DHCP dominados nos dois sistemas, é hora da aplicação web.
* **Impacto de negócio:** Aumenta a resiliência e o repertório de operação de DNS.

### Aula 26 - Servidor web Apache + PHP
* **Conceito/fundamento:** Apache e PHP no Ubuntu; Virtual host e permissões; Estrutura da aplicação; Testes com curl e navegador.
* **O que se aprende:** Publicar a aplicação web em Apache e PHP no Ubuntu Server.
* **Problema em aberto:** A aplicação precisa de um banco de dados dedicado.
* **Impacto de negócio:** Publica a aplicação sem misturar responsabilidades.

### Aula 27 - Banco de dados e integração da aplicação
* **Conceito/fundamento:** MariaDB/MySQL no Ubuntu; Banco, usuário e permissões; Conexão PHP + MariaDB; Testes de leitura e escrita.
* **O que se aprende:** Configurar o servidor de banco de dados e integrar a aplicação PHP ao DB01.
* **Problema em aberto:** Com a aplicação funcionando, é preciso endurecer a segurança.
* **Impacto de negócio:** Entrega a aplicação funcional ponta a ponta.

### Aula 28 - Segurança em servidores Linux
* **Conceito/fundamento:** Checklist de hardening e CIS Benchmarks; Atualizações e remoção de serviços desnecessários; sudo, menor privilégio e contas de serviço; SSH seguro: chaves, root desabilitado e fail2ban.
* **O que se aprende:** Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.
* **Problema em aberto:** Protegido o servidor, ainda é preciso compartilhar arquivos e garantir recuperação.
* **Impacto de negócio:** Hardening reduz risco de invasão, multa e parada de operação.

### Aula 29 - Backup, continuidade e recuperação de dados
* **Conceito/fundamento:** Regra 3-2-1 e política de retenção; Backup completo, incremental e diferencial; rsync, tar e systemd timer; RPO, RTO e continuidade de negócio.
* **O que se aprende:** Definir e testar a rotina de backup, restauração e continuidade dos dados do ambiente.
* **Problema em aberto:** Validar o ambiente integrado e diagnosticar falhas de ponta a ponta.
* **Impacto de negócio:** Reduz perda de dados e tempo de recuperação em caso de falha.

## Bloco 5 - Operação, Monitoramento e Projeto

### Aula 30 - Monitoramento, automação e troubleshooting
* **Conceito/fundamento:** Métricas, logs, SNMP e SLO; Zabbix, Prometheus e Grafana; Fluxo DHCP -> DNS -> aplicação -> banco; PowerShell, Task Scheduler e Event Viewer.
* **O que se aprende:** Monitorar servidores, automatizar rotinas e diagnosticar falhas no ambiente integrado.
* **Problema em aberto:** Organizar processos, riscos e controles de governança.
* **Impacto de negócio:** Reduz tempo de reação e de parada.

### Aula 31 - Governança de TI, segurança e certificações
* **Conceito/fundamento:** ITIL 4: catálogo de serviços, incidentes, problemas e mudanças; COBIT e alinhamento com o negócio; ISO/IEC 27001 e gestão de riscos; LGPD e privacidade.
* **O que se aprende:** Aplicar conceitos de governança e segurança na administração dos servidores e planejar certificações.
* **Problema em aberto:** Tudo precisa ser consolidado e defendido em um projeto final.
* **Impacto de negócio:** Governança reduz risco, melhora auditoria e alinha TI ao negócio.

### Aula 32 - Projeto integrador: apresentação e defesa
* **Conceito/fundamento:** Síntese dos cinco blocos; Pacote de documentação do projeto; Demonstração do ambiente e das evidências; Métricas de funcionamento e monitoramento.
* **O que se aprende:** Apresentar e defender o projeto completo de rede cliente/servidor da NexaTech, com evidências de instalação, configuração e monitoramento.
* **Problema em aberto:** Depois da UC, o próximo passo é aprofundar certificações e especializações.
* **Impacto de negócio:** Um projeto bem documentado e demonstrável reduz risco e facilita a continuidade.

---

## Matriz de domínio

| Domínio | Aulas |
| :--- | :--- |
| TCP/IP, redes e protocolos | 01-04, 16-18 |
| Windows Server | 08-15, 19 |
| Firewall e acesso remoto | 16-19 |
| Linux Server | 20-29 |
| Serviços espelhados (DNS, DHCP, web) | 12, 13, 19, 24-26 |
| Segurança, backup e continuidade | 15, 28, 29, 31 |
| Monitoramento e troubleshooting | 30 |
| Governança e projeto | 31, 32 |