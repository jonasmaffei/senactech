# Ementa - UC7

## Identificação

**UC7 - Planejar e executar a instalação, a configuração e o monitoramento de sistemas operacionais de redes locais (servidores)**

- **Carga horária:** 96 horas
- **Curso:** Técnico em Informática (Senac)
- **Organização didática:** 32 aulas de 3 horas, em 5 blocos
- **Período de aulas:** 13/11/2026 a 17/12/2026 e 25/01/2027 a 04/02/2027
- **Recesso:** 18/12/2026 a 22/01/2027
- **Finalização da UC:** 05/02/2027 a 18/02/2027

---

## Descrição

A UC desenvolve competências para planejar, instalar, configurar e monitorar sistemas operacionais de redes locais, atuando com servidores proprietários e livres em uma rede cliente/servidor.

O aluno aprende a:

- levantar requisitos e documentar a infraestrutura;
- projetar topologias, VLANs e plano de endereçamento IP;
- instalar e configurar Windows Server e Ubuntu Server;
- implantar Active Directory, compartilhamento de arquivos e GPOs no Windows;
- instalar e configurar DNS, DHCP e serviços web nos dois sistemas, comparando as implementações;
- configurar roteamento, NAT e firewall com **pfSense**;
- aplicar segurança, backup, continuidade e monitoramento;
- aplicar metodologias de governança de TI;
- trabalhar em grupo e defender decisões técnicas com evidências.

> O conteúdo de **computação em nuvem e tecnologias emergentes** foi movido para material extra em [`../extras/computacao-em-nuvem/`](../extras/computacao-em-nuvem/README.md) e não conta nas 32 aulas.

---

## Organização em blocos

| Bloco | Nome | Aulas | Horas | Foco |
| :---: | :--- | :---: | :---: | :--- |
| **1** | Fundamentos e Planejamento | 01-07 | 21 h | TCP/IP, IPv4, rede, hardware, RAID, virtualização, planejamento e plano diretor |
| **2** | Windows Server | 08-15 | 24 h | Instalação, AD, controlador, UOs, DNS, DHCP, arquivos, quotas e GPOs |
| **3** | Redes, Roteamento e Firewall | 16-19 | 12 h | Roteamento, NAT, pfSense, IIS e acesso remoto |
| **4** | Linux Server e Segurança | 20-29 | 30 h | Ubuntu, administração, usuários, SSH, DHCP, DNS, Apache/PHP, banco, hardening e backup |
| **5** | Operação, Monitoramento e Projeto | 30-32 | 9 h | Monitoramento, automação, troubleshooting, governança e projeto |

---

## Perfil do docente

Profissional com formação superior completa na área de Informática ou afins, bem como formação pedagógica para quem não possui Licenciatura, conforme a legislação vigente.

Preferencialmente, com experiência profissional em docência e em administração de redes, além de domínio em:

- sistemas operacionais de redes;
- instalação e configuração de serviços de rede em Windows Server e Ubuntu Server, incluindo DNS, DHCP e web;
- roteamento, NAT e firewall (pfSense);
- segurança em servidores Linux;
- metodologias de governança de tecnologia da informação.

É desejável certificação em produtos Microsoft, Linux e Cisco.

---

## Metodologia sugerida

- Aulas expositivas curtas, com demonstração e prática guiada.
- Trabalho em grupo para definir a topologia da rede de uma empresa fictícia.
- Instalação de servidores proprietários (Windows Server) e livres (Ubuntu Server).
- Configuração de uma rede cliente/servidor com serviços integrados.
- Espelhamento de serviços: DNS e DHCP em Windows e Linux; web em IIS e Apache/PHP.
- Laboratório de firewall com pfSense para liberar a navegação da LAN.
- Uso prioritário de laboratório de informática ou de redes, com rack móvel, switches, cabeamento e demais equipamentos.
- Quando o laboratório físico não estiver disponível, usar máquinas virtuais no **VirtualBox**, criadas manualmente.
- Conteúdo de nuvem disponível como leitura extra, sem contar na carga obrigatória.

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

## Bibliografia básica

- BARRETT, Daniel J. **Linux Guia Prático: Comandos Essenciais**. 4. ed. São Paulo: Novatec Editora, 2024.
- PERROTT, S. **Windows Server 2019 & PowerShell All-in-One For Dummies**. John Wiley & Sons, 2019.
- THOMPSON, M. A. **Microsoft Windows Server 2016: fundamentos**. São Paulo: Érika, 2017.

## Bibliografia complementar

- COMER, D. E. **Interligação de Redes com TCP/IP**. Rio de Janeiro: Campus, 2015.
- MARTINI, Luciano Andress; MAIEVES, Gustavo Turin. **Linux para Servidores - Da instalação à virtualização**. Santa Cruz do Rio Pardo: Ed. Viena, 2013.
- NETO, Manoel Veras de Sousa. **Computação em Nuvem - Nova Arquitetura de TI**. Rio de Janeiro: Brasport, 2015.
- VERAS, Manoel. **Virtualização - Tecnologia Central do Datacenter**. 2. ed. Rio de Janeiro: Brasport, 2016.
- RAMOS, Atos. **Administração de Servidores Linux**. Rio de Janeiro: Editora Ciência Moderna, 2013.
- pfSense Documentation: https://docs.netgate.com/pfsense/en/latest/

---

## Relação com o projeto integrador

O projeto integrador, detalhado em [`../aulas/projeto-integrador/README.md`](../aulas/projeto-integrador/README.md), percorre toda a UC e exige que o grupo:

1. diagnostique a situação da empresa fictícia;
2. projete a topologia e o plano de IPs;
3. instale e configure servidores Windows e Ubuntu;
4. implante serviços de rede, firewall, segurança, backup e monitoramento;
5. documente as decisões e defenda a solução em banca.

---

> Voltar para o [README do repositório](../README.md).
