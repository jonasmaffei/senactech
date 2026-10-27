# Timeline de Engenharia - UC7

## A cadeia causal da infraestrutura de servidores

> Cada aula resolve o gargalo que a anterior deixou em aberto. O fio condutor vai do planejamento da rede a operação monitorada de um ambiente misto Windows/Linux.

```text
BLOCO 1 - FUNDAMENTOS E PLANEJAMENTO
A01 Servidor e UC7 -> A02 Topologia e IP -> A03 Protocolos e servicos
  -> A04 Hardware e virtualizacao -> A05 Plano de instalacao -> A06 Laboratorio e plano diretor

BLOCO 2 - WINDOWS SERVER
A07 Instalacao -> A08 Active Directory -> A09 DNS/DHCP -> A10 Arquivos e permissoes
  -> A11 GPOs -> A12 Web e acesso remoto -> A13 Automacao e monitoramento

BLOCO 3 - LINUX SERVER E SEGURANCA
A14 Instalacao -> A15 Operacao -> A16 Servicos de rede -> A17 Hardening
  -> A18 Arquivos, backup e integracao -> A19 Laboratorio integrado e troubleshooting

BLOCO 4 - MONITORAMENTO, NUVEM, GOVERNANCA E PROJETO
A20 Monitoramento -> A21 Continuidade e incidentes -> A22 Nuvem e tecnologias emergentes
  -> A23 Governanca e certificacoes -> A24 Projeto integrador e defesa
```

## Bloco 1 - Fundamentos e Planejamento

> Servidor na rede -> topologia e IP -> protocolos e serviços -> hardware e virtualização -> planejamento -> laboratório e plano diretor.

### Aula 01 - O servidor na rede local e a UC7
* **Conceito/fundamento:** Modelo cliente/servidor, papéis de servidor, serviços de rede e ciclo de vida da infraestrutura.
* **O que se aprende:** Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e o cenário que conduzirá a UC7.
* **Conexão:** Abre a UC e estabelece o problema de negócio que será resolvido ao longo das 24 aulas.
* **Problema em aberto:** Quais serviços serão necessários e como eles se conectam fisicamente?
* **Impacto de negócio:** Evita compras e instalações sem critério, reduzindo custo e retrabalho.

### Aula 02 - Arquitetura e topologia de rede local
* **Conceito/fundamento:** Topologias, meios físicos, equipamentos ativos, VLANs, IPv4/IPv6, sub-redes e documentação.
* **O que se aprende:** Interpretar topologias, meios físicos, rack e endereçamento IP para projetar a LAN da NexaTech.
* **Conexão:** Transforma o diagnóstico da Aula 01 em uma planta de rede concreta.
* **Problema em aberto:** Uma rede desenhada ainda precisa de protocolos e serviços definidos para funcionar.
* **Impacto de negócio:** Um plano de IP e VLAN bem feito evita conflitos, lentidão e falhas de segurança.

### Aula 03 - Protocolos e serviços de rede
* **Conceito/fundamento:** Camadas de rede, TCP/UDP, portas, DNS, DHCP, HTTP, SMB, SSH e diagnóstico.
* **O que se aprende:** Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.
* **Conexão:** Dá nome e número aos serviços que a topologia da Aula 02 precisará transportar.
* **Problema em aberto:** Os protocolos definem o quê; falta decidir em qual hardware e com qual grau de virtualização isso rodará.
* **Impacto de negócio:** Uma matriz de portas correta reduz indisponibilidade e exposição desnecessária.

### Aula 04 - Hardware de servidor, armazenamento e virtualização
* **Conceito/fundamento:** Hardware de servidor, RAID, hypervisors, redes virtuais e planejamento de capacidade.
* **O que se aprende:** Especificar hardware de servidor e projetar um laboratório virtualizado compatível com o projeto.
* **Conexão:** Escolhe a plataforma física e virtual que sustentará todas as instalações seguintes.
* **Problema em aberto:** Com o laboratório pronto, é preciso um plano de implantação para não configurar tudo de forma desordenada.
* **Impacto de negócio:** Dimensionamento correto evita gasto excessivo e gargalos previsíveis.

### Aula 05 - Planejamento da instalação e documentação
* **Conceito/fundamento:** Requisitos, escopo, riscos, licenciamento, backup, mudanças e documentação.
* **O que se aprende:** Produzir um plano de instalação com requisitos, riscos, backup, licenciamento e cronograma.
* **Conexão:** Organiza a execução das aulas seguintes e evita improviso na configuração.
* **Problema em aberto:** O plano está no papel; falta montar o laboratório e validar a rede de ponta a ponta.
* **Impacto de negócio:** Planejamento reduz paradas não programadas e facilita a aprovação orçamentária.

### Aula 06 - Laboratório virtual e plano diretor da rede
* **Conceito/fundamento:** Laboratório virtual, rede interna, baseline, documentação e apresentação técnica.
* **O que se aprende:** Montar o laboratório virtual e consolidar o plano diretor da rede da NexaTech.
* **Conexão:** Fecha o Bloco 1 com o laboratório pronto e o plano aprovado para a instalação dos serviços.
* **Problema em aberto:** Com a base pronta, qual sistema operacional será instalado e configurado primeiro?
* **Impacto de negócio:** Um plano diretor permite que a empresa cresça sem refazer a rede a cada novo serviço.

## Bloco 2 - Windows Server

> Instalar -> promover controlador de domínio -> resolver nomes e endereços -> compartilhar arquivos -> aplicar políticas -> publicar serviços -> automatizar e monitorar.

### Aula 07 - Instalação e configuração inicial do Windows Server
* **Conceito/fundamento:** Edições, modos de instalação, pós-instalação, funções, recursos e administração remota.
* **O que se aprende:** Instalar o Windows Server e executar a configuração inicial segura do servidor.
* **Conexão:** Inicia o Bloco 2 instalando a base que receberá o Active Directory.
* **Problema em aberto:** Um servidor isolado não autentica ninguém; é preciso criar o domínio.
* **Impacto de negócio:** Uma instalação padronizada reduz falhas e facilita suporte e auditoria.

### Aula 08 - Active Directory Domain Services
* **Conceito/fundamento:** Domínio, floresta, controlador, LDAP, Kerberos, OUs, usuários e grupos.
* **O que se aprende:** Configurar o Active Directory, criar a estrutura organizacional e gerenciar usuários e grupos.
* **Conexão:** Transforma o servidor instalado na Aula 07 em uma autoridade de autenticação.
* **Problema em aberto:** O domínio precisa de DNS confiável e de endereçamento automático para os clientes.
* **Impacto de negócio:** Autenticação centralizada reduz contas soltas e facilita desligamentos e auditorias.

### Aula 09 - DNS e DHCP no Windows Server
* **Conceito/fundamento:** Zonas DNS, registros, encaminhadores, escopo DHCP, reservas e autorização.
* **O que se aprende:** Configurar DNS e DHCP integrados ao Active Directory para atender os clientes da rede.
* **Conexão:** Dá suporte ao domínio da Aula 08 e prepara o compartilhamento de arquivos.
* **Problema em aberto:** Com nomes e endereços resolvidos, os usuários precisam de pastas e permissões.
* **Impacto de negócio:** DNS e DHCP estáveis são a base invisível de quase todos os serviços corporativos.

### Aula 10 - Compartilhamento de arquivos e permissões
* **Conceito/fundamento:** SMB, NTFS, herança, AGDLP, quotas, shadow copies, backup e auditoria.
* **O que se aprende:** Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.
* **Conexão:** Entrega o serviço que mais afeta o dia a dia dos usuários da NexaTech.
* **Problema em aberto:** As permissões estão corretas, mas precisam ser aplicadas de forma padronizada em todos os computadores.
* **Impacto de negócio:** Controle de acesso a arquivos reduz vazamentos, perdas e retrabalho jurídico.

### Aula 11 - GPOs e políticas de segurança
* **Conceito/fundamento:** GPO, escopo, herança, precedência, filtragem, segurança e padronização.
* **O que se aprende:** Aplicar políticas de grupo para padronizar segurança e configurações nos clientes do domínio.
* **Conexão:** Aplica em escala as permissões e padrões definidos nas aulas anteriores.
* **Problema em aberto:** O ambiente interno está padronizado; falta publicar serviços e permitir administração remota segura.
* **Impacto de negócio:** Políticas centralizadas reduzem falhas humanas e custo de suporte.

### Aula 12 - Serviços web, acesso remoto e administração
* **Conceito/fundamento:** IIS, HTTPS/TLS, RDP, VPN, WinRM, Windows Admin Center e menor privilégio.
* **O que se aprende:** Publicar serviços web e configurar administração remota segura no Windows Server.
* **Conexão:** Amplia o servidor de arquivos e domínio para serviços de comunicação e administração.
* **Problema em aberto:** Serviços publicados precisam de rotinas automáticas de verificação e monitoramento.
* **Impacto de negócio:** Acesso remoto seguro evita sequestro de servidor e vazamento de dados.

### Aula 13 - Automação e monitoramento no Windows Server
* **Conceito/fundamento:** PowerShell, agendamento, logs, contadores de desempenho, atualizações e alertas.
* **O que se aprende:** Automatizar tarefas rotineiras e monitorar a saúde do Windows Server com ferramentas nativas.
* **Conexão:** Fecha o Bloco 2 com o ambiente Windows operável e observável.
* **Problema em aberto:** A empresa também precisa de serviços abertos e de baixo custo; entra o Linux.
* **Impacto de negócio:** Automação reduz tempo de reação e libera a equipe para tarefas de maior valor.

## Bloco 3 - Linux Server e Segurança

> Instalar -> operar com systemd -> publicar DNS/DHCP/web -> endurecer -> compartilhar e fazer backup -> integrar com Windows e diagnosticar.

### Aula 14 - Instalação e configuração inicial do Linux Server
* **Conceito/fundamento:** Distribuições, LTS, LVM, usuários, sudo, rede, SSH, pacotes e firewall.
* **O que se aprende:** Instalar uma distribuição Linux de servidor e realizar a configuração inicial segura.
* **Conexão:** Abre o Bloco 3 e coloca o segundo sistema operacional no mesmo laboratório.
* **Problema em aberto:** Instalado o sistema, é preciso aprender a operá-lo no dia a dia.
* **Impacto de negócio:** Linux reduz custo de licenciamento e é base de muitos serviços de nuvem e containers.

### Aula 15 - Administração e operação do Linux
* **Conceito/fundamento:** systemd, processos, disco, permissões, logs, cron, timers e SSH.
* **O que se aprende:** Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.
* **Conexão:** Transforma a instalação da Aula 14 em operação repetível e auditável.
* **Problema em aberto:** Com a operação sob controle, é hora de publicar os serviços de rede no Linux.
* **Impacto de negócio:** Rotinas documentadas reduzem dependência de pessoas e tempo de recuperação.

### Aula 16 - Serviços de rede no Linux: DNS, DHCP e web
* **Conceito/fundamento:** BIND, zonas DNS, DHCP, Apache/Nginx, virtual hosts e TLS.
* **O que se aprende:** Configurar DNS, DHCP e servidor web em Linux para atender a rede da NexaTech.
* **Conexão:** Coloca o Linux como servidor de serviços, não apenas como máquina de testes.
* **Problema em aberto:** Serviços publicados aumentam a superfície de ataque e exigem hardening.
* **Impacto de negócio:** Serviços abertos bem configurados reduzem custo e aumentam a resiliência da rede.

### Aula 17 - Segurança em servidores Linux
* **Conceito/fundamento:** Hardening, sudo, SSH, firewall, fail2ban, SELinux/AppArmor, TLS e auditoria.
* **O que se aprende:** Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.
* **Conexão:** Protege os serviços publicados na Aula 16 e prepara a integração com Windows.
* **Problema em aberto:** Protegido o servidor, ainda é preciso compartilhar arquivos e garantir recuperação.
* **Impacto de negócio:** Hardening reduz risco de invasão, multa e parada de operação.

### Aula 18 - Arquivos, backup e interoperabilidade Linux
* **Conceito/fundamento:** Samba, NFS, rsync, retenção, restauração, AD e quotas.
* **O que se aprende:** Configurar compartilhamento de arquivos, backup e integração do Linux com clientes Windows.
* **Conexão:** Integra o Linux ao dia a dia dos usuários Windows e protege os dados da empresa.
* **Problema em aberto:** Windows e Linux já compartilham recursos; falta testar o ambiente integrado e diagnosticar falhas.
* **Impacto de negócio:** Backup testado é a diferença entre uma falha e um desastre.

### Aula 19 - Laboratório integrado e troubleshooting
* **Conceito/fundamento:** Troubleshooting, integração Windows/Linux, DNS, horário, firewall, permissões e logs.
* **O que se aprende:** Integrar serviços Windows e Linux e diagnosticar falhas comuns em um ambiente misto.
* **Conexão:** Fecha o Bloco 3 provando que os dois sistemas operacionais funcionam juntos.
* **Problema em aberto:** O ambiente funciona, mas ainda não está sendo observado de forma contínua.
* **Impacto de negócio:** Diagnóstico estruturado reduz tempo de parada e melhora a confiança dos usuários.

## Bloco 4 - Monitoramento, Nuvem, Governança e Projeto

> Monitorar -> proteger e recuperar -> comparar nuvem e on-premise -> governar -> apresentar e defender.

### Aula 20 - Monitoramento de servidores e serviços
* **Conceito/fundamento:** Métricas, logs, SNMP, agentes, dashboards, SLO e alertas.
* **O que se aprende:** Implementar monitoramento de métricas, logs e alertas para os servidores da NexaTech.
* **Conexão:** Inicia o Bloco 4 transformando o ambiente instalado em um serviço observável.
* **Problema em aberto:** Monitorar detecta falhas; é preciso também recuperar dados e continuar operando.
* **Impacto de negócio:** Monitoramento proativo reduz indisponibilidade e custo de suporte.

### Aula 21 - Backup, continuidade e resposta a incidentes
* **Conceito/fundamento:** RPO, RTO, 3-2-1, tipos de backup, DR, resposta a incidentes e LGPD.
* **O que se aprende:** Definir estratégia de backup, continuidade de negócio e resposta a incidentes para a NexaTech.
* **Conexão:** Protege tudo o que foi construído nos blocos anteriores.
* **Problema em aberto:** A empresa precisa decidir o que mantém na própria infraestrutura e o que vai para a nuvem.
* **Impacto de negócio:** Continuidade evita perda de receita, reputação e obrigações legais.

### Aula 22 - Computação em nuvem e tecnologias emergentes
* **Conceito/fundamento:** IaaS/PaaS/SaaS, nuvem híbrida, containers, serverless, TCO e LGPD.
* **O que se aprende:** Comparar on-premise e nuvem e avaliar tecnologias emergentes para a infraestrutura da NexaTech.
* **Conexão:** Amplia o horizonte do projeto e conecta a infraestrutura local às tendências de mercado.
* **Problema em aberto:** A escolha tecnológica precisa ser sustentada por governança e conformidade.
* **Impacto de negócio:** Decisões de nuvem mal fundamentadas geram custo recorrente e dependência de fornecedor.

### Aula 23 - Governança de TI, segurança e certificações
* **Conceito/fundamento:** ITIL, COBIT, ISO 27001, LGPD, riscos, auditoria e certificações.
* **O que se aprende:** Aplicar conceitos de governança e segurança na administração dos servidores e planejar certificações.
* **Conexão:** Dá sustentação organizacional ao ambiente técnico construído na UC.
* **Problema em aberto:** Tudo precisa ser consolidado e defendido em um projeto final.
* **Impacto de negócio:** Governança reduz risco, melhora auditoria e alinha TI ao negócio.

### Aula 24 - Projeto integrador: apresentação e defesa
* **Conceito/fundamento:** Síntese, documentação, demonstração, métricas, arguição e melhoria contínua.
* **O que se aprende:** Apresentar e defender o projeto completo de rede cliente/servidor da NexaTech, com evidências de instalação, configuração e monitoramento.
* **Conexão:** Fecha a UC provando que o aluno consegue planejar, instalar, configurar e monitorar uma rede cliente/servidor.
* **Problema em aberto:** Depois da UC, o próximo passo é aprofundar certificações e especializações.
* **Impacto de negócio:** Um projeto bem documentado e demonstrável reduz risco e facilita a continuidade.

---

## Matriz de domínio

| Domínio | Aulas |
| :--- | :--- |
| Planejamento e documentação | 01, 02, 05, 06, 24 |
| Redes e protocolos | 02, 03, 09, 16, 19 |
| Windows Server | 07-13 |
| Linux Server | 14-19 |
| Segurança | 10, 11, 12, 17, 21, 23 |
| Backup e continuidade | 05, 10, 18, 21 |
| Monitoramento e automação | 13, 15, 20 |
| Nuvem e governança | 22, 23 |
| Projeto e comunicação | 06, 24 |
