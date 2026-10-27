# Guia de Estudo e Resumos - UC7

> Resumos consolidados das 24 aulas. Use como revisão rápida antes das atividades e do projeto integrador.

## Bloco 1 - Fundamentos e Planejamento
### Aula 01 - O servidor na rede local e a UC7
* Servidor é um computador ou serviço dedicado a atender clientes com funções especializadas.
* Uma LAN corporativa típica combina autenticação, arquivos, DNS, DHCP, web, backup e monitoramento.
* O ciclo de vida da infraestrutura vai do planejamento ao descomissionamento, passando por operação e melhoria contínua.
### Aula 02 - Arquitetura e topologia de rede local
* A topologia em estrela domina as LANs atuais por simplicidade e facilidade de manutenção.
* VLANs separam setores e reduzem o domínio de broadcast, mas exigem planejamento de endereços.
* O plano de IP é um documento vivo: precisa ser atualizado a cada mudança.
### Aula 03 - Protocolos e serviços de rede
* TCP garante entrega e ordem; UDP prioriza velocidade e é usado em consultas e telemetria.
* DNS traduz nomes em endereços; DHCP entrega configuração de rede automaticamente.
* Portas abertas devem seguir o princípio do menor privilégio e ser documentadas.
### Aula 04 - Hardware de servidor, armazenamento e virtualização
* Servidores priorizam confiabilidade: ECC, RAID, fontes redundantes e gerenciamento remoto.
* RAID protege contra falha de disco, mas não substitui backup.
* A virtualização permite consolidar serviços, desde que haja planejamento de CPU, RAM e disco.
### Aula 05 - Planejamento da instalação e documentação
* Todo serviço implantado deve ter dono, documentação, backup e critério de aceite.
* A matriz de riscos orienta prioridades e planos de contingência.
* Licenciamento e backup são parte do projeto, não detalhes posteriores.
### Aula 06 - Laboratório virtual e plano diretor da rede
* O laboratório virtual replica a rede planejada sem depender de hardware dedicado.
* Snapshots criam pontos de retorno antes de mudanças arriscadas.
* O plano diretor é o contrato técnico que guia a execução e a validação do projeto.

## Bloco 2 - Windows Server
### Aula 07 - Instalação e configuração inicial do Windows Server
* Server Core reduz superfície de ataque e consumo de recursos.
* Configuração inicial inclui nome, rede, atualizações, fuso e ativação.
* Funções devem ser instaladas conforme a necessidade, não todas de uma vez.
### Aula 08 - Active Directory Domain Services
* O AD DS centraliza autenticação e autorização em um domínio.
* O DNS é pré-requisito: o domínio não funciona sem resolução de nomes correta.
* OUs organizam delegação e políticas; grupos aplicam permissões de forma escalável.
### Aula 09 - DNS e DHCP no Windows Server
* O DNS do AD é integrado e recebe registros dinâmicos dos clientes.
* O DHCP entrega IP, máscara, gateway e DNS; reservas garantem estabilidade para servidores.
* Zonas reversas ajudam no diagnóstico e em auditorias.
### Aula 10 - Compartilhamento de arquivos e permissões
* Permissões de compartilhamento e NTFS se combinam; valé a mais restritiva.
* Grupos bem estruturados simplificam a manutenção e reduzem erros.
* Shadow Copies e backup são complementares, não substitutos.
### Aula 11 - GPOs e políticas de segurança
* GPOs aplicam configurações em massa e devem ser testadas antes da produção.
* Herança e precedência explicam por que uma política pode não ter o efeito esperado.
* Políticas de senha, bloqueio de tela e firewall são controles mínimos de segurança.
### Aula 12 - Serviços web, acesso remoto e administração
* HTTPS protege o tráfego e exige certificado válido e configuração correta.
* RDP deve ser restrito por firewall, VPN ou gateway, nunca exposto sem controle.
* Windows Admin Center e PowerShell Remoting reduzem a necessidade de acesso físico.
### Aula 13 - Automação e monitoramento no Windows Server
* PowerShell permite automatizar verificações e padronizar respostas.
* O Agendador executa rotinas sem intervenção humana.
* Logs e contadores são a matéria-prima do monitoramento e da investigação de incidentes.

## Bloco 3 - Linux Server e Segurança
### Aula 14 - Instalação e configuração inicial do Linux Server
* Ubuntu LTS, Debian e Rocky são opções estáveis para servidores.
* LVM facilita redimensionamento e snapshots de volume.
* SSH com chaves e sudo é o padrão mínimo de administração remota segura.
### Aula 15 - Administração e operação do Linux
* systemd gerência serviços e timers com logs centralizados no journal.
* df, du e lsblk são o mínimo para evitar indisponibilidade por disco cheio.
* Permissões e logs são controles essenciais de operação e segurança.
### Aula 16 - Serviços de rede no Linux: DNS, DHCP e web
* BIND exige zonas e registros consistentes; um erro de serial impede a propagação.
* DHCP precisa de escopo, opções e controle de conflitos.
* Nginx e Apache devem rodar com usuário sem privilégios e TLS configurado.
### Aula 17 - Segurança em servidores Linux
* Hardening é redução de superfície de ataque, não instalação de um único antivírus.
* SSH com chave, root bloqueado e fail2ban evita a maioria dos ataques automatizados.
* Firewall e logs devem ser revisados periodicamente, não configurados uma vez e esquecidos.
### Aula 18 - Arquivos, backup e interoperabilidade Linux
* Samba permite compartilhar arquivos com clientes Windows usando SMB.
* Backup precisa de cópias em mídias e locais diferentes, com retenção definida.
* A restauração deve ser testada e documentada, não presumida.
### Aula 19 - Laboratório integrado e troubleshooting
* A maioria das falhas em ambiente misto envolve DNS, horário, firewall ou permissões.
* Um método com hipótese e teste evita mudanças aleatórias.
* Toda correção deve atualizar a documentação e, se possível, virar automação.

## Bloco 4 - Monitoramento, Nuvem, Governança e Projeto
### Aula 20 - Monitoramento de servidores e serviços
* Monitorar é coletar, visualizar e agir; o dashboard sozinho não resolve.
* Alertas precisam de limiares calibrados e um responsável definido.
* Windows e Linux podem ser monitorados no mesmo painel com agentes e SNMP.
### Aula 21 - Backup, continuidade e resposta a incidentes
* RPO define quanto dado a empresa aceita perder; RTO define quanto tempo pode ficar parada.
* Backup sem teste de restauração é apenas uma esperança.
* Resposta a incidentes exige papéis, comunicação e registro de decisões.
### Aula 22 - Computação em nuvem e tecnologias emergentes
* Nuvem troca investimento inicial por custo recorrente e exige gestão de consumo.
* Containers empacotam aplicações; máquinas virtuais empacotam sistemas completos.
* LGPD, latência e lock-in são tão importantes quanto preço.
### Aula 23 - Governança de TI, segurança e certificações
* Governança é o conjunto de processos que mantém a TI previsível e auditável.
* ITIL, COBIT, ISO 27001 e LGPD se complementam em níveis diferentes.
* Certificações devem seguir um plano de carreira, não serem acumuladas sem propósito.
### Aula 24 - Projeto integrador: apresentação e defesa
* O projeto final integra planejamento, instalação, configuração, segurança e monitoramento.
* A defesa oral verifica domínio técnico e capacidade de justificar decisões.
* Documentação e evidências são tão importantes quanto o ambiente funcionando.

---

## Temas transversais

- **Segurança:** menor privilegio, hardening, firewall, TLS, auditoria e resposta a incidentes.
- **Disponibilidade:** RAID, backup, monitoramento, RPO/RTO e testes de restauração.
- **Documentação:** inventario, diagramas, runbooks, matriz de permissões e critérios de aceite.
- **Governança:** ITIL, COBIT, ISO 27001 e LGPD aplicados ao dia a dia da infraestrutura.
- **Decisão técnica:** toda escolha deve considerar custo, risco, operação e impacto no negócio.
