# Projeto Integrador - Rede Cliente/Servidor NexaTech

## Apresentação

O projeto integrador é o eixo que amarra a UC7. Em grupos de 3 a 4 estudantes, a equipe deve **planejar, instalar, configurar, proteger e monitorar** a rede local de uma empresa fictícia, a **NexaTech Soluções Digitais**.

O projeto começa na Aula 01 e amadurece a cada bloco. A entrega final é apresentada na **Aula 32**.

---

## Laboratório final

| VM | Sistema | Papel |
| :--- | :--- | :--- |
| **DC01** | Windows Server 2022/2025 | AD, compartilhamento de arquivos, DNS e DHCP |
| **CLI01** | Windows 10 | Cliente para testes de domínio, arquivos e aplicação |
| **CLI02** | Windows 10 | Segundo cliente para validação |
| **APP01** | Ubuntu Server 24.04 LTS | Aplicação web em Apache + PHP |
| **DB01** | Ubuntu Server 24.04 LTS | Banco de dados da aplicação |
| **FW01** | pfSense | Roteamento, firewall, NAT e saída para a internet |

> **Serviços espelhados:** o DC01 mantém o DNS e o DHCP oficiais. O APP01 e o DB01 são usados para instalar e comparar DNS, DHCP e web em Linux, sempre desativando o serviço Linux ao final da prática para não conflitar com o Windows.

---

## Cenário

A NexaTech tem 45 colaboradores, dois andares e os seguintes setores:

- Administração (8 pessoas)
- Vendas (12 pessoas)
- Suporte (15 pessoas)
- Diretoria (4 pessoas)
- Visitantes e Wi-Fi (acesso temporário)

Hoje não há servidores dedicados. Os arquivos ficam em um PC compartilhado, cada estação tem conta local e não há monitoramento. A empresa quer:

1. autenticação centralizada;
2. pastas por setor com permissões;
3. DNS e DHCP confiáveis;
4. intranet e aplicação web;
5. banco de dados para a aplicação;
6. firewall e navegação controlada;
7. backup e recuperação;
8. monitoramento dos serviços;
9. plano de continuidade e governança.

---

## Entregáveis

| # | Entregável | Bloco | Evidências |
| :---: | :--- | :---: | :--- |
| 1 | Diagnóstico e requisitos | 1 | Documento com dores, serviços e prioridades |
| 2 | Duas VMs na mesma rede | 1 | IPs, máscara, rede e evidências de ping |
| 3 | Topologia e plano diretor | 1 | Diagrama, cronograma, riscos e critérios de aceite |
| 4 | Laboratório virtual | 1 | VMs criadas no VirtualBox, rede interna e snapshots |
| 5 | Windows Server instalado | 2 | Checklist e capturas de tela |
| 6 | Active Directory e controlador | 2 | Estrutura de OUs, usuários, grupos e domínio |
| 7 | DNS e DHCP no Windows | 2 | Zonas, escopos, reservas e testes |
| 8 | Arquivos, permissões e quotas | 2 | Matriz de acesso e testes |
| 9 | GPOs | 2 | Catálogo de políticas e gpresult |
| 10 | Roteamento e pfSense | 3 | Regras, NAT e navegação liberada com evidências |
| 11 | IIS e acesso remoto | 3 | Site publicado, HTTPS e checklist de acesso |
| 12 | Ubuntu Server instalado | 4 | Checklist e evidências |
| 13 | Usuários, permissões e SSH | 4 | Contas, chaves e acesso remoto seguro |
| 14 | DHCP no Linux | 4 | Configuração comentada e concessão testada |
| 15 | DNS no Linux | 4 | Zonas BIND9 e resolução direta/reversa |
| 16 | Aplicação Apache + PHP | 4 | Site publicado no APP01 e teste pelos clientes |
| 17 | Banco de dados e integração | 4 | Banco criado e aplicação funcionando ponta a ponta |
| 18 | Hardening Linux | 4 | Relatório antes/depois |
| 19 | Backup e continuidade | 4 | RPO/RTO e teste de restauração |
| 20 | Monitoramento e troubleshooting | 5 | Dashboard, alerta e registro de diagnóstico |
| 21 | Governança | 5 | Dossiê, riscos e certificações |
| 22 | Defesa final | 5 | Apresentação, demonstração e documentação |

---

## Fases

### Fase 1 - Planejamento (Aulas 01-07)

- Entender TCP/IP, IPv4 e a rede.
- Diagnosticar a situação atual e desenhar a topologia.
- Definir VLANs, faixas de IP e serviços.
- Especificar hardware, RAID e virtualização.
- Montar o laboratório manual no VirtualBox e o plano diretor.

### Fase 2 - Windows Server (Aulas 08-15)

- Instalar e configurar o Windows Server.
- Criar o domínio, o controlador e a estrutura de OUs.
- Configurar DNS, DHCP, compartilhamentos e quotas.
- Aplicar GPOs e preparar a intranet.

### Fase 3 - Redes, Roteamento e Firewall (Aulas 16-19)

- Configurar roteamento e NAT.
- Instalar e configurar o pfSense.
- Liberar a navegação da LAN com regras e NAT.
- Publicar IIS e configurar acesso remoto seguro.

### Fase 4 - Linux Server (Aulas 20-29)

- Instalar e operar o Ubuntu Server.
- Gerenciar usuários, permissões e SSH.
- Espelhar DHCP e DNS no Linux.
- Publicar a aplicação Apache + PHP e o banco de dados.
- Aplicar hardening e backup.

### Fase 5 - Operação e defesa (Aulas 30-32)

- Monitorar, automatizar e diagnosticar falhas.
- Organizar governança e certificações.
- Apresentar e defender o projeto.

---

## Documentação final

O grupo deve entregar uma pasta organizada com:

```text
projeto-nexatech/
  01_diagnostico.md
  02_tcpip_ipv4.md
  03_topologia_plano_diretor.md
  04_windows_server.md
  05_active_directory.md
  06_dns_dhcp_windows.md
  07_arquivos_permissoes_quotas.md
  08_gpos.md
  09_redes_pfsense.md
  10_iis_acesso_remoto.md
  11_ubuntu_server.md
  12_usuarios_ssh.md
  13_dhcp_linux.md
  14_dns_linux.md
  15_apache_php.md
  16_banco_integracao.md
  17_seguranca_linux.md
  18_backup_continuidade.md
  19_monitoramento_troubleshooting.md
  20_governanca.md
  21_evidencias/ (prints, logs, saídas)
  README.md
```

---

## Rubrica de avaliação

| Critério | Peso | O que será observado |
| :--- | :---: | :--- |
| Planejamento e TCP/IP | 15% | Topologia, rede, IPs, riscos e cronograma |
| Windows Server | 20% | AD, DNS/DHCP, arquivos, quotas e GPO funcionando |
| Redes, roteamento e pfSense | 10% | NAT, regras e navegação liberada com evidências |
| Linux Server e serviços espelhados | 20% | Ubuntu, DHCP, DNS, Apache/PHP e banco |
| Segurança, backup e continuidade | 15% | Hardening, RPO/RTO e teste de restauração |
| Monitoramento e troubleshooting | 10% | Dashboard, alertas e diagnóstico estruturado |
| Governança e defesa | 10% | Riscos, processos, LGPD, certificações e arguição |

Critérios eliminadores: ambiente que não autentica, perda de dados sem backup, senhas expostas ou serviço crítico sem controle de acesso.

> O conteúdo de nuvem está em [`../../extras/computacao-em-nuvem/`](../../extras/computacao-em-nuvem/README.md) e pode ser citado como análise complementar, mas não substitui os entregáveis obrigatórios.

---

## Calendário de marcos

| Marco | Data | Entrega |
| :--- | :--- | :--- |
| M1 - Plano diretor | 24/11/2026 | Diagnóstico, TCP/IP, topologia, IPs e plano |
| M2 - Windows operacional | 04/12/2026 | AD, DNS/DHCP, arquivos, quotas e GPO |
| M3 - Firewall e web | 11/12/2026 | Roteamento, pfSense, IIS e acesso remoto |
| M4 - Linux e aplicação | 17/12/2026 | Ubuntu, DNS/DHCP Linux, Apache/PHP e banco |
| M5 - Operação e defesa | 04/02/2027 | Monitoramento, governança e banca final |

---

## Regras de trabalho

- Grupos de 3 a 4 estudantes.
- Todos devem participar da instalação e da defesa.
- Usar apenas dados fictícios.
- Registrar evidências ao longo do processo, não apenas no final.
- Não compartilhar senhas em arquivos versionados.
- Citar fontes e ferramentas utilizadas.

---

## Referências

- Plano de aulas: [`../../docs/04_plano-de-aulas.md`](../../docs/04_plano-de-aulas.md)
- Laboratório VirtualBox: [`../../docs/06_tutorial-laboratorio-virtual.md`](../../docs/06_tutorial-laboratorio-virtual.md)
- Materiais complementares: [`../../docs/05_materiais-complementares.md`](../../docs/05_materiais-complementares.md)
