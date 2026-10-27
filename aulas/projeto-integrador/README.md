# Projeto Integrador - Rede Cliente/Servidor NexaTech

## Apresentação

O projeto integrador e o eixo que amarra a UC7. Em grupos de 3 a 4 estudantes, a equipe deve **planejar, instalar, configurar, proteger e monitorar** a rede local de uma empresa fictícia, a **NexaTech Soluções Digitais**.

O projeto comeca na Aula 01 e amadurece a cada bloco. A entrega final e apresentada na Aula 24.

---

## Cenário

A NexaTech tem 45 colaboradores, dois andares e os seguintes setores:

- Administração (8 pessoas)
- Vendas (12 pessoas)
- Suporte (15 pessoas)
- Diretoria (4 pessoas)
- Visitantes e Wi-Fi (acesso temporario)

Hoje não há servidores dedicados. Os arquivos ficam em um PC compartilhado, cada estação tem conta local e não há monitoramento. A empresa quer:

1. autenticação centralizada;
2. pastas por setor com permissões;
3. DNS e DHCP confiáveis;
4. intranet interna;
5. backup e recuperação;
6. monitoramento dos serviços;
7. plano de continuidade e governança.

---

## Entregaveis

| # | Entregavel | Bloco | Evidências |
| :---: | :--- | :---: | :--- |
| 1 | Diagnóstico e requisitos | 1 | Documento com dores, serviços e prioridades |
| 2 | Topologia e plano de IPs | 1 | Diagrama, planilha de IPs e VLANs |
| 3 | Plano de instalação | 1 | Cronograma, riscos, licenciamento e critérios de aceite |
| 4 | Laboratório virtual | 1 | VMs criadas, rede interna e snapshots |
| 5 | Windows Server instalado | 2 | Checklist e capturas de tela |
| 6 | Active Directory | 2 | Estrutura de OUs, usuários e grupos |
| 7 | DNS e DHCP | 2 | Zonas, escopos, reservas e testes |
| 8 | Arquivos e permissões | 2 | Matriz de acesso e testes |
| 9 | GPOs | 2 | Catalogo de políticas e gpresult |
| 10 | Intranet e acesso remoto | 2 | Site publicado, HTTPS e checklist |
| 11 | Automação e monitoramento Windows | 2 | Script, agendamento e relatório |
| 12 | Linux Server instalado | 3 | Checklist e evidências |
| 13 | Serviços Linux | 3 | DNS, DHCP e intranet |
| 14 | Hardening Linux | 3 | Relatório antes/depois |
| 15 | Samba e backup | 3 | Compartilhamento, rotina e restauração |
| 16 | Ambiente integrado | 3 | Relatório de troubleshooting |
| 17 | Monitoramento | 4 | Dashboard e alerta |
| 18 | Continuidade | 4 | RPO/RTO, backup e playbook |
| 19 | Nuvem e governança | 4 | Parecer de nuvem e dossie |
| 20 | Defesa final | 4 | Apresentação, demonstração e documentação |

---

## Fases

### Fase 1 - Planejamento (Aulas 01-06)

- Diagnosticar a situação atual.
- Desenhar a topologia física e lógica.
- Definir VLANs, faixas de IP e serviços.
- Especificar hardware e virtualização.
- Montar o laboratório e o plano diretor.

### Fase 2 - Windows Server (Aulas 07-13)

- Instalar e configurar o Windows Server.
- Criar o domínio e a estrutura de OUs.
- Configurar DNS, DHCP e compartilhamentos.
- Aplicar GPOs e publicar a intranet.
- Automatizar verificacoes e monitorar.

### Fase 3 - Linux Server (Aulas 14-19)

- Instalar e operar o Ubuntu Server.
- Configurar DNS, DHCP e web.
- Aplicar hardening e firewall.
- Configurar Samba, backup e restauração.
- Integrar com Windows e diagnosticar falhas.

### Fase 4 - Operação e defesa (Aulas 20-24)

- Implantar monitoramento e alertas.
- Definir backup, continuidade e resposta a incidentes.
- Comparar on-premise e nuvem.
- Organizar governança e certificações.
- Apresentar e defender o projeto.

---

## Documentação final

O grupo deve entregar uma pasta organizada com:

```text
projeto-nexatech/
  01_diagnostico.md
  02_topologia_e_ips.md
  03_plano_de_instalacao.md
  04_windows_server.md
  05_active_directory.md
  06_dns_dhcp.md
  07_arquivos_permissoes.md
  08_gpos.md
  09_intranet_acesso_remoto.md
  10_linux_server.md
  11_seguranca_linux.md
  12_backup_restauracao.md
  13_monitoramento.md
  14_continuidade_incidentes.md
  15_nuvem_governanca.md
  16_evidencias/ (prints, logs, saidas)
  README.md
```

---

## Rubrica de avaliação

| Critério | Peso | O que será observado |
| :--- | :---: | :--- |
| Planejamento e documentação | 20% | Topologia, IPs, riscos, cronograma e clareza |
| Windows Server | 20% | AD, DNS/DHCP, arquivos, GPO e web funcionando |
| Linux Server e segurança | 20% | Instalação, serviços, hardening e backup |
| Monitoramento e continuidade | 15% | Dashboard, alertas, RPO/RTO e teste de restauração |
| Nuvem e governança | 10% | Análise de custo, risco, LGPD e processos |
| Apresentação e defesa | 15% | Demonstração, argumentacao e trabalho em equipe |

Critérios eliminadores: ambiente que não autentica, perda de dados sem backup, senhas expostas ou serviço critico sem controle de acesso.

---

## Calendário de marcos

| Marco | Data | Entrega |
| :--- | :--- | :--- |
| M1 - Plano diretor | 19/11/2026 | Diagnóstico, topologia, IPs e plano de instalação |
| M2 - Windows operacional | 01/12/2026 | AD, DNS/DHCP, arquivos, GPO e web |
| M3 - Linux integrado | 10/12/2026 | Serviços, hardening, backup e troubleshooting |
| M4 - Operação e defesa | 17/12/2026 | Monitoramento, continuidade, governança e banca |

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
- Laboratório virtual: [`../../docs/06_tutorial-laboratorio-virtual.md`](../../docs/06_tutorial-laboratorio-virtual.md)
- Materiais complementares: [`../../docs/05_materiais-complementares.md`](../../docs/05_materiais-complementares.md)
