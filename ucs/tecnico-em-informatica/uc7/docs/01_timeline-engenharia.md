# Timeline de Engenharia - UC7

## A cadeia causal da infraestrutura de servidores

> Cada aula resolve o gargalo da anterior, do TCP/IP à operação monitorada de um ambiente Windows/Linux com firewall pfSense.

```text
BLOCO 1 - FUNDAMENTOS E PLANEJAMENTO
A01 TCP/IP e IPv4 -> A02 O servidor na rede local e a UC7 -> A03 Arquitetura e topologia de rede local -> A04 Protocolos e serviços de rede -> A05 Hardware de servidor, armazenamento e RAID -> A06 Laboratório de servidores: dimensionamento e criação das VMs -> A07 Planejamento, laboratório e plano diretor da rede

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
* **Dor e solução:** A equipe não entende como os pacotes circulam nem como distribuir os endereços IP. Impacto: Sem um plano de endereçamento, surgem conflitos de IP e as máquinas não se comunicam. Solução: Explicar TCP/IP e IPv4, definir a rede 192.168.10.0/24 e testar a comunicação entre CLI01 e CLI02. Prioridade: Essencial.
* **Conceito/fundamento:** Modelo TCP/IP e comparação com o modelo OSI; Endereços IPv4: rede, host, máscara e gateway; IPs privados, públicos e NAT; Notação CIDR e identificação da rede.
* **O que se aprende:** Compreender o modelo TCP/IP e o endereçamento IPv4, criando duas VMs Windows 10 na mesma rede interna e testando a comunicação.
* **Problema em aberto:** Com os conceitos entendidos, é preciso definir o papel de cada servidor.
* **Impacto de negócio:** Um plano de IP correto evita conflitos e facilita a instalação dos servidores.

### Aula 02 - O servidor na rede local e a UC7
* **Dores da NexaTech:** Arquivos espalhados em um PC comum (solução: servidor de arquivos com backup); falta de autenticação central (solução: Active Directory); falhas no improviso (solução: topologia, IPs e DNS/DHCP padronizados); ausência de monitoramento (solução: alertas de disponibilidade, disco e logs).
* **Conceito/fundamento:** Modelo cliente/servidor e redes peer-to-peer; Tipos de servidor: arquivos, autenticação, DNS, DHCP, web, banco, virtualização e nuvem; Virtualização: hypervisor tipo 1 e 2, capacidade do host, snapshots e ciclo de vida da VM; Serviços essenciais de uma LAN corporativa; On-premise, nuvem e ambiente híbrido.
* **O que se aprende:** Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e criar um servidor de arquivos básico em uma terceira VM Windows 10 (FS01) com compartilhamento SMB.
* **Problema em aberto:** Quais serviços serão necessários e como eles se conectam fisicamente?
* **Impacto de negócio:** Evita compras e instalações sem critério, reduzindo custo e retrabalho.

### Aula 03 - Arquitetura e topologia de rede local
* **Dor e solução:** A empresa tem 45 estações, impressoras e Wi-Fi, mas não tem desenho de rede nem plano de IPs. Impacto: Compras sem critério e endereços desorganizados causam retrabalho e pontos sem conectividade. Solução: Desenhar a topologia física e lógica e montar a planilha de endereçamento por setor. Prioridade: Essencial.
* **Conceito/fundamento:** Topologias estrela, barramento, anel e malha; Cabeamento Cat5e/Cat6, fibra óptica e patch panel; Rack, switch, roteador, firewall e access point; VLANs e segmentação por setor; IPv4: endereço, máscara e notação CIDR; Gateway padrão e roteamento na LAN; IPv6 e dual stack; Documentação de rede e plano de IPs.
* **O que se aprende:** Interpretar topologias, meios físicos, rack, IPv4, máscara, gateway e endereçamento para projetar a LAN da NexaTech.
* **Problema em aberto:** Uma rede desenhada ainda precisa de protocolos e serviços definidos para funcionar.
* **Impacto de negócio:** Um plano de IP e VLAN bem feito evita conflitos, lentidão e falhas de segurança.

### Aula 04 - Protocolos e serviços de rede
* **Dor e solução:** Não se sabe quais serviços e portas precisam estar liberados no firewall. Impacto: Portas fechadas quebram serviços; portas abertas sem critério expõem a rede. Solução: Montar a matriz de serviços, protocolos, portas e riscos antes de configurar o firewall. Prioridade: Essencial.
* **Conceito/fundamento:** Modelo OSI e pilha TCP/IP; TCP versus UDP; Portas essenciais: DNS 53, DHCP 67/68, HTTP 80, HTTPS 443, SMB 445, SSH 22, RDP 3389, LDAP 389/636; DNS: hierarquia, tipos de registro e resolução.
* **O que se aprende:** Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.
* **Problema em aberto:** Os protocolos definem o quê; falta decidir em qual hardware e com qual grau de virtualização isso rodará.
* **Impacto de negócio:** Uma matriz de portas correta reduz indisponibilidade e exposição desnecessária.

### Aula 05 - Hardware de servidor, armazenamento e RAID
* **Dor e solução:** O orçamento permite apenas um servidor físico e a equipe precisa escolher CPU, memória, discos e RAID. Impacto: Uma compra mal dimensionada limita o desempenho e coloca os dados em risco. Solução: Especificar o servidor com justificativa de CPU, memória, discos e RAID 1 ou 5. Prioridade: Importante.
* **Conceito/fundamento:** BIOS/UEFI, POST e CMOS; CPU, núcleos, memória ECC e placas de rede; Discos SAS, SATA e NVMe; RAID 0, 1, 5, 6 e 10.
* **O que se aprende:** Especificar hardware de servidor e escolher o arranjo de armazenamento adequado, entendendo BIOS/UEFI, discos e RAID.
* **Problema em aberto:** Com o hardware definido, é preciso virtualizar para aproveitar melhor a capacidade.
* **Impacto de negócio:** Dimensionamento correto evita gasto excessivo e gargalos previsíveis.

### Aula 06 - Laboratório de servidores: dimensionamento e criação das VMs
* **Dor e solução:** A especificação do servidor está no papel, mas ainda não existe ambiente virtual para instalar os serviços. Impacto: Sem as VMs dimensionadas, as aulas de Windows Server e Linux não têm onde instalar os serviços. Solução: Criar DC01, APP01 e DB01 no VirtualBox com vCPU, RAM, discos e rede interna conforme o papel de cada servidor. Prioridade: Essencial.
* **Conceito/fundamento:** Dimensionamento de vCPU, memória e disco por papel do servidor; Adaptadores NAT e rede interna; Alocação dinâmica de disco; Snapshot baseline; Documentação de nome, recursos, IP e função da VM.
* **O que se aprende:** Criar e dimensionar as VMs DC01, APP01 e DB01 no VirtualBox, preparando a base para a instalação dos serviços.
* **Problema em aberto:** Validar a comunicação entre as VMs e consolidar o plano diretor da rede.
* **Impacto de negócio:** Reduz custo de hardware e permite errar sem comprometer o computador real.

### Aula 07 - Planejamento, laboratório e plano diretor da rede
* **Dor e solução:** A direção quer previsibilidade, mas não há cronograma, riscos nem critérios de aceite. Impacto: A implantação vira improviso e não há como provar que a rede atende aos requisitos. Solução: Montar o Plano Diretor da Rede com cronograma, riscos, topologia, IPs e critérios de aceite. Prioridade: Importante.
* **Conceito/fundamento:** Requisitos, escopo, cronograma e marcos; Licenciamento Windows Server, CALs e software livre; Riscos, plano de reversão e critérios de aceite; Rede interna rede-nexatech e IPs estáticos.
* **O que se aprende:** Consolidar o plano de instalação e o plano diretor da rede, com a base do laboratório VirtualBox validada.
* **Problema em aberto:** Com a rede planejada e o laboratório pronto, o próximo passo é instalar o Windows Server.
* **Impacto de negócio:** Planejamento reduz paradas, retrabalho e gastos não previstos.

## Bloco 2 - Windows Server

### Aula 08 - Instalação e configuração inicial do Windows Server
* **Dor e solução:** O primeiro servidor será o controlador de domínio e servidor de arquivos, mas a instalação de fábrica é insegura. Impacto: Nome, rede, atualizações e administração remota indefinidos comprometem o domínio. Solução: Instalar o Windows Server com nome, IP fixo, atualizações e acesso administrativo definidos. Prioridade: Essencial.
* **Conceito/fundamento:** Edições Standard e Datacenter; Desktop Experience versus Server Core; Requisitos de hardware e virtualização; Instalação e configuração pós-instalação.
* **O que se aprende:** Instalar o Windows Server e executar a configuração inicial segura do servidor.
* **Problema em aberto:** Um servidor isolado não autentica ninguém; é preciso criar o domínio.
* **Impacto de negócio:** Uma instalação padronizada reduz falhas e facilita suporte e auditoria.

### Aula 09 - Active Directory Domain Services
* **Dor e solução:** A autenticação está espalhada em contas locais e a empresa quer centralizá-la. Impacto: Sem um domínio, não há login único nem controle central de usuários. Solução: Criar o domínio nexatech.local e promover o DC01 a controlador de domínio. Prioridade: Essencial.
* **Conceito/fundamento:** Domínio, floresta, árvore e controlador de domínio; LDAP, Kerberos e dependência do DNS; Instalação da função AD DS; Promoção do servidor a controlador.
* **O que se aprende:** Instalar a função AD DS e promover o Windows Server a controlador do domínio nexatech.local.
* **Problema em aberto:** Com o domínio criado, os clientes Windows 10 precisam ingressar nele.
* **Impacto de negócio:** Centraliza a autenticação e cria a base para usuários, grupos e políticas.

### Aula 10 - Controlador de domínio e ingresso de clientes
* **Dor e solução:** O domínio existe, mas os clientes ainda não autenticam nele. Impacto: Os usuários continuam usando contas locais e o controle central não funciona. Solução: Ingressar CLI01 e CLI02 no domínio e validar o login com contas do domínio. Prioridade: Essencial.
* **Conceito/fundamento:** Cliente com DNS apontando para o DC01; Ingresso no domínio e conta de computador; Login com usuário do domínio; GPO padrão do domínio.
* **O que se aprende:** Validar o controlador de domínio e ingressar os clientes Windows 10 no domínio nexatech.local.
* **Problema em aberto:** Com os clientes no domínio, é preciso organizar setores, grupos, usuários e permissões.
* **Impacto de negócio:** Permite login centralizado e prepara os clientes para receber políticas.

### Aula 11 - Unidades organizacionais, grupos e usuários
* **Dor e solução:** A NexaTech precisa refletir seus setores no Active Directory e aplicar permissões por grupo. Impacto: Permissões por pessoa não escalam e aumentam o risco de acesso indevido. Solução: Criar OUs por setor, grupos e usuários, com permissões atribuídas aos grupos. Prioridade: Essencial.
* **Conceito/fundamento:** Unidades organizacionais e delegação; Usuários, grupos de segurança e grupos de distribuição; UPN, senha e políticas de conta; Grupos globais, locais de domínio e universais.
* **O que se aprende:** Criar a estrutura organizacional do domínio e gerenciar usuários e grupos por setor.
* **Problema em aberto:** Publicar serviços de rede que dependem do domínio: DNS e DHCP.
* **Impacto de negócio:** Permite aplicar regras por setor e reduz o esforço de administração.

### Aula 12 - DNS no Windows Server
* **Dor e solução:** Os clientes não encontram o controlador de domínio e os serviços pelo nome. Impacto: O domínio falha de forma intermitente e os serviços ficam inacessíveis pelo nome. Solução: Configurar zonas DNS direta e reversa integradas ao Active Directory e testar a resolução. Prioridade: Essencial.
* **Conceito/fundamento:** Zonas direta e reversa; Registros A, AAAA, CNAME, MX e PTR; Encaminhadores e cache; Integração com o Active Directory.
* **O que se aprende:** Configurar zonas DNS integradas ao Active Directory para resolver nomes dos servidores e clientes.
* **Problema em aberto:** Entregar endereçamento automático aos clientes com DHCP.
* **Impacto de negócio:** Resolução de nomes confiável é pré-requisito para domínio, arquivos e web.

### Aula 13 - DHCP no Windows Server
* **Dor e solução:** Configurar IP, gateway e DNS manualmente em cada cliente não escala. Impacto: A configuração manual gera erros, conflitos e retrabalho a cada nova estação. Solução: Criar escopo DHCP com faixa, exclusões e reservas para servidores e impressoras. Prioridade: Essencial.
* **Conceito/fundamento:** Escopo, faixa e exclusões; Opções 003, 006 e 015; Reservas e tempo de concessão; Autorização do DHCP no AD.
* **O que se aprende:** Configurar escopos, reservas e opções DHCP no Windows Server para entregar endereçamento à rede.
* **Problema em aberto:** Controlar o acesso aos dados compartilhados com permissões adequadas.
* **Impacto de negócio:** Reduz trabalho manual e evita erros de configuração nos clientes.

### Aula 14 - Compartilhamento de arquivos, permissões e quotas
* **Dor e solução:** Contratos, propostas e documentos fiscais ficam em uma pasta compartilhada sem controle. Impacto: Qualquer usuário acessa ou apaga arquivos, sem rastreabilidade nem recuperação. Solução: Criar pastas por setor, aplicar permissões NTFS por grupo, quotas e cópias de sombra. Prioridade: Essencial.
* **Conceito/fundamento:** SMB e compartilhamentos de rede; Permissões de compartilhamento versus NTFS; Herança, acesso efetivo e princípio do menor privilégio; Modelo AGDLP: contas, grupos globais, grupos locais de domínio e permissões.
* **O que se aprende:** Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.
* **Problema em aberto:** As permissões estão corretas, mas precisam ser aplicadas de forma padronizada em todos os computadores.
* **Impacto de negócio:** Controle de acesso a arquivos reduz vazamentos, perdas e retrabalho jurídico.

### Aula 15 - GPOs e políticas de segurança
* **Dor e solução:** A auditoria interna apontou senhas fracas, telas que não bloqueiam e unidades mapeadas manualmente. Impacto: O ambiente fica vulnerável e as configurações se perdem a cada troca de máquina. Solução: Aplicar GPOs de senha, bloqueio de tela e mapeamento de unidades por política. Prioridade: Essencial.
* **Conceito/fundamento:** Objetos de GPO, escopo e herança; Ordem de precedência e filtragem de segurança; Política de senha e bloqueio de conta; Firewall, atualizações e restrições de software.
* **O que se aprende:** Aplicar políticas de grupo para padronizar segurança e configurações nos clientes do domínio.
* **Problema em aberto:** O ambiente interno está padronizado; falta publicar serviços e permitir administração remota segura.
* **Impacto de negócio:** Políticas centralizadas reduzem falhas humanas e custo de suporte.

## Bloco 3 - Redes, Roteamento e Firewall

### Aula 16 - Roteamento e NAT
* **Dor e solução:** A rede interna não tem acesso à internet. Impacto: Atualizações e serviços externos ficam indisponíveis para os clientes. Solução: Configurar gateway, roteamento e NAT antes de instalar o firewall dedicado. Prioridade: Importante.
* **Conceito/fundamento:** Rede interna, rede externa e gateway padrão; Roteamento estático e encaminhamento de pacotes; NAT, PAT e MASQUERADE; ip_forward no Linux e RRAS no Windows.
* **O que se aprende:** Entender como um servidor ou firewall encaminha pacotes entre redes e aplica NAT para liberar internet.
* **Problema em aberto:** Centralizar as regras em um firewall dedicado e auditável.
* **Impacto de negócio:** Permite que a rede interna use a internet sem endereços públicos.

### Aula 17 - pfSense: instalação e configuração inicial
* **Dor e solução:** A NexaTech não tem um firewall dedicado entre a LAN e a internet. Impacto: A rede interna fica exposta e sem regras centralizadas de proteção. Solução: Instalar o pfSense com WAN/NAT e LAN na rede interna e definir a administração. Prioridade: Essencial.
* **Conceito/fundamento:** pfSense como firewall e roteador baseado em FreeBSD; Interfaces WAN e LAN; Instalação e configuração inicial; Endereçamento da LAN e da WAN.
* **O que se aprende:** Instalar o pfSense em uma VM com duas interfaces e configurar o acesso inicial.
* **Problema em aberto:** Configurar DHCP, regras e NAT para liberar a navegação com segurança.
* **Impacto de negócio:** Centraliza a proteção e a auditoria do tráfego da rede.

### Aula 18 - pfSense: firewall, NAT e liberação de internet
* **Dor e solução:** Os clientes precisam navegar sem expor a LAN. Impacto: Sem regras de firewall e NAT, a saída para a internet é insegura ou não funciona. Solução: Configurar regras de firewall, NAT e liberação de internet no pfSense. Prioridade: Essencial.
* **Conceito/fundamento:** Regras na interface LAN e política padrão; NAT de saída e aliases; DHCP e DNS no pfSense; Logs e diagnóstico.
* **O que se aprende:** Configurar DHCP, regras de firewall e NAT no pfSense para liberar a navegação da LAN.
* **Problema em aberto:** Integrar o firewall ao restante do ambiente e documentar o acesso remoto seguro.
* **Impacto de negócio:** Libera a navegação com regras explícitas, logs e possibilidade de auditoria.

### Aula 19 - Serviços web (IIS), acesso remoto e administração
* **Dor e solução:** A empresa quer publicar serviços web no Windows e administrar o servidor sem expor RDP ou HTTP. Impacto: Serviços publicados sem proteção e acesso remoto aberto aumentam o risco de invasão. Solução: Publicar o IIS e habilitar acesso remoto com regras restritas e HTTPS. Prioridade: Importante.
* **Conceito/fundamento:** IIS: sites, bindings, permissões e logs; HTTP, HTTPS e certificados TLS; RDP: riscos e boas práticas; VPN e acesso remoto seguro.
* **O que se aprende:** Publicar serviços web no Windows Server e configurar administração remota segura.
* **Problema em aberto:** Com os serviços web e o acesso remoto entendidos, começa o servidor Linux da aplicação.
* **Impacto de negócio:** Permite comparar as duas plataformas e escolher com critério.

## Bloco 4 - Linux Server e Segurança

### Aula 20 - Instalação e configuração inicial do Ubuntu Server
* **Dor e solução:** A NexaTech vai usar um servidor Linux de baixo custo para DNS, web e monitoramento. Impacto: Uma instalação sem documentação e sem rede configurada compromete todos os serviços. Solução: Instalar o Ubuntu Server sem interface gráfica, com particionamento, IP fixo, SSH e atualizações. Prioridade: Importante.
* **Conceito/fundamento:** Ubuntu Server 24.04 LTS sem ambiente gráfico; Particionamento EFI, /, /home e swap; Usuários, root e sudo; Rede estática em /etc/netplan/50-cloud-init.yaml.
* **O que se aprende:** Instalar o Ubuntu Server sem interface gráfica nas VMs APP01 e DB01, particionar o disco e configurar rede, SSH e atualizações.
* **Problema em aberto:** Aprender a operar serviços, processos, logs e agendamentos.
* **Impacto de negócio:** Padroniza a instalação e reduz erros na operação do servidor Linux.

### Aula 21 - Administração e operação do Linux
* **Dor e solução:** O servidor Linux está no ar, mas não há rotinas de operação. Impacto: A equipe não sabe o que está rodando, quanto disco resta ou o que falhou. Solução: Criar rotinas de processos, armazenamento, logs e agendamento de tarefas. Prioridade: Importante.
* **Conceito/fundamento:** APT: sources.list, update, upgrade e remoção de pacotes; systemd: units, enable, start, status e journalctl; Processos: ps, top, htop e kill; Disco: df, du, lsblk, mount e LVM.
* **O que se aprende:** Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.
* **Problema em aberto:** Com a operação sob controle, é hora de publicar os serviços de rede no Linux.
* **Impacto de negócio:** Rotinas documentadas reduzem dependência de pessoas e tempo de recuperação.

### Aula 22 - Usuários, grupos e permissões no Linux
* **Dor e solução:** O servidor Linux terá vários serviços e as contas não estão separadas. Impacto: Usuários com privilégios demais ampliam o impacto de erros e invasões. Solução: Criar usuários e grupos, aplicar permissões e usar sudo com o menor privilégio. Prioridade: Essencial.
* **Conceito/fundamento:** useradd/adduser, passwd e grupos; chmod simbólico e octal; chown, chgrp e umask; sudo e menor privilégio.
* **O que se aprende:** Gerenciar usuários, grupos, permissões e sudo no Ubuntu Server.
* **Problema em aberto:** Habilitar administração remota segura para operar o servidor.
* **Impacto de negócio:** Reduz o impacto de erros e de contas comprometidas.

### Aula 23 - SSH e administração remota
* **Dor e solução:** A equipe precisa administrar o servidor sem ir até o console. Impacto: Sem acesso remoto seguro, a manutenção depende de deslocamento e senhas expostas. Solução: Habilitar SSH com chaves, restringir usuários e testar o acesso remoto. Prioridade: Importante.
* **Conceito/fundamento:** openssh-server e sshd_config; Autenticação por senha e por chave; Porta, PermitRootLogin e AllowUsers; Geração e cópia de chaves.
* **O que se aprende:** Habilitar e endurecer o SSH para administrar o servidor Linux remotamente.
* **Problema em aberto:** Endurecer o restante do servidor e revisar os serviços expostos.
* **Impacto de negócio:** Permite operação remota sem expor credenciais frágeis.

### Aula 24 - DHCP no Linux
* **Dor e solução:** A NexaTech já usa DHCP no Windows e quer operar o mesmo serviço no Linux. Impacto: Sem entender as diferenças, a equipe pode criar escopos conflitantes na mesma rede. Solução: Configurar o DHCP no Ubuntu Server com escopo, reservas e testes de concessão. Prioridade: Importante.
* **Conceito/fundamento:** isc-dhcp-server e Kea DHCP; /etc/dhcp/dhcpd.conf; Faixa, gateway e DNS; Reservas e concessões.
* **O que se aprende:** Instalar e configurar o DHCP no Ubuntu Server para atender a LAN de laboratório.
* **Problema em aberto:** O próximo serviço espelhado é o DNS.
* **Impacto de negócio:** Dá autonomia para operar o mesmo serviço em Windows e Linux.

### Aula 25 - DNS no Linux
* **Dor e solução:** O DNS do Windows atende o domínio e a empresa quer comparar com uma alternativa Linux. Impacto: Sem uma configuração correta, a resolução de nomes falha e os serviços ficam inacessíveis. Solução: Configurar o BIND9 com zonas direta e reversa e testar a resolução. Prioridade: Importante.
* **Conceito/fundamento:** BIND9 e named.conf; Zonas direta e reversa; Registros e serial; Forwarders.
* **O que se aprende:** Instalar e configurar o BIND9 no Ubuntu Server para resolver nomes da rede.
* **Problema em aberto:** Com DNS e DHCP dominados nos dois sistemas, é hora da aplicação web.
* **Impacto de negócio:** Aumenta a resiliência e o repertório de operação de DNS.

### Aula 26 - Servidor web Apache + PHP
* **Dor e solução:** A NexaTech quer uma aplicação simples para a intranet no servidor Linux. Impacto: Sem um servidor web configurado, a intranet não fica disponível para os setores. Solução: Publicar a aplicação em Apache e PHP, com virtual host, permissões e logs. Prioridade: Importante.
* **Conceito/fundamento:** Apache e PHP no Ubuntu; Virtual host e permissões; Estrutura da aplicação; Testes com curl e navegador.
* **O que se aprende:** Publicar a aplicação web em Apache e PHP no Ubuntu Server.
* **Problema em aberto:** A aplicação precisa de um banco de dados dedicado.
* **Impacto de negócio:** Publica a aplicação sem misturar responsabilidades.

### Aula 27 - Banco de dados e integração da aplicação
* **Dor e solução:** A aplicação está publicada, mas ainda não armazena dados. Impacto: Sem banco dedicado, a intranet não registra informações e não atende ao negócio. Solução: Criar o banco MariaDB/MySQL, o usuário da aplicação e a conexão PHP + banco. Prioridade: Importante.
* **Conceito/fundamento:** MariaDB/MySQL no Ubuntu; Banco, usuário e permissões; Conexão PHP + MariaDB; Testes de leitura e escrita.
* **O que se aprende:** Configurar o servidor de banco de dados e integrar a aplicação PHP ao DB01.
* **Problema em aberto:** Com a aplicação funcionando, é preciso endurecer a segurança.
* **Impacto de negócio:** Entrega a aplicação funcional ponta a ponta.

### Aula 28 - Segurança em servidores Linux
* **Dor e solução:** A NexaTech sofreu tentativas de acesso SSH e precisa provar que o servidor Linux está protegido. Impacto: Uma auditoria reprovada expõe a empresa a riscos e perda de credibilidade. Solução: Aplicar hardening: usuários, firewall, atualizações, SSH e revisão de logs. Prioridade: Essencial.
* **Conceito/fundamento:** Checklist de hardening e CIS Benchmarks; Atualizações e remoção de serviços desnecessários; sudo, menor privilégio e contas de serviço; SSH seguro: chaves, root desabilitado e fail2ban.
* **O que se aprende:** Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.
* **Problema em aberto:** Protegido o servidor, ainda é preciso compartilhar arquivos e garantir recuperação.
* **Impacto de negócio:** Hardening reduz risco de invasão, multa e parada de operação.

### Aula 29 - Backup, continuidade e recuperação de dados
* **Dor e solução:** Os arquivos compartilhados no Windows Server podem ser apagados ou perdidos em uma falha. Impacto: Sem backup, a empresa perde contratos e documentos fiscais sem recuperação. Solução: Definir rotina de backup, testar a restauração e documentar a continuidade. Prioridade: Essencial.
* **Conceito/fundamento:** Regra 3-2-1 e política de retenção; Backup completo, incremental e diferencial; rsync, tar e systemd timer; RPO, RTO e continuidade de negócio.
* **O que se aprende:** Definir e testar a rotina de backup, restauração e continuidade dos dados do ambiente.
* **Problema em aberto:** Validar o ambiente integrado e diagnosticar falhas de ponta a ponta.
* **Impacto de negócio:** Reduz perda de dados e tempo de recuperação em caso de falha.

## Bloco 5 - Operação, Monitoramento e Projeto

### Aula 30 - Monitoramento, automação e troubleshooting
* **Dor e solução:** A equipe só descobre que um serviço caiu quando o usuário reclama. Impacto: O tempo de indisponibilidade aumenta e o diagnóstico vira tentativa e erro. Solução: Monitorar disponibilidade, disco e logs, automatizar rotinas e registrar troubleshooting. Prioridade: Importante.
* **Conceito/fundamento:** Métricas, logs, SNMP e SLO; Zabbix, Prometheus e Grafana; Fluxo DHCP -> DNS -> aplicação -> banco; PowerShell, Task Scheduler e Event Viewer.
* **O que se aprende:** Monitorar servidores, automatizar rotinas e diagnosticar falhas no ambiente integrado.
* **Problema em aberto:** Organizar processos, riscos e controles de governança.
* **Impacto de negócio:** Reduz tempo de reação e de parada.

### Aula 31 - Governança de TI, segurança e certificações
* **Dor e solução:** A NexaTech vai passar por uma auditoria de segurança e precisa demonstrar controle sobre ativos, mudanças, incidentes e acessos. Impacto: Sem processos e evidências, a auditoria aponta falhas de governança e conformidade. Solução: Organizar catálogo de serviços, gestão de mudanças e incidentes, riscos e LGPD. Prioridade: Importante.
* **Conceito/fundamento:** ITIL 4: catálogo de serviços, incidentes, problemas e mudanças; COBIT e alinhamento com o negócio; ISO/IEC 27001 e gestão de riscos; LGPD e privacidade.
* **O que se aprende:** Aplicar conceitos de governança e segurança na administração dos servidores e planejar certificações.
* **Problema em aberto:** Tudo precisa ser consolidado e defendido em um projeto final.
* **Impacto de negócio:** Governança reduz risco, melhora auditoria e alinha TI ao negócio.

### Aula 32 - Projeto integrador: apresentação e defesa
* **Dor e solução:** A banca vai avaliar se o trabalho desenvolvido atende ao tema e às orientações da DreamShaper. Impacto: Sem uma entrega organizada e com fontes, o projeto não comprova a aprendizagem. Solução: Consolidar o trabalho desenvolvido e defender as decisões. Prioridade: Essencial.
* **Conceito/fundamento:** Síntese das UCs do módulo; pesquisa; desenvolvimento do trabalho; entrega na DreamShaper.
* **O que se aprende:** Apresentar e defender o projeto integrador do módulo, conforme as orientações da DreamShaper.
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