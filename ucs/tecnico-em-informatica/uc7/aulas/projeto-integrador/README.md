# Projeto Integrador - UC7

## O que é

O Projeto Integrador é um **trabalho em grupo** que decorre ao longo do módulo e tem como base os conteúdos da **UC7**. A turma está dividida em **3 grupos** e cada grupo recebe **3 opções de tema**, escolhendo **uma** para desenvolver um trabalho de pesquisa.

O trabalho é de **pesquisa**: o grupo investiga o tema, compara soluções, analisa viabilidade, riscos e boas práticas, e apresenta conclusões fundamentadas. Não há obrigação de instalar ou configurar um ambiente; o foco é compreender, comparar e propor.

Pesquisa, orçamento e desenho de infraestrutura são **exemplos** do que pode ser pesquisado e trabalhado. O grupo escolhe o recorte que fizer mais sentido para o tema.

O acompanhamento e a entrega seguem as orientações da plataforma **DreamShaper**.

---

## Como funciona

1. A turma é dividida em **3 grupos**.
2. Cada grupo recebe **3 temas** e escolhe **1** para o trabalho.
3. O grupo pesquisa o tema com fontes confiáveis, registrando a evolução na **DreamShaper**.
4. O trabalho é desenvolvido ao longo do módulo, conectando os conteúdos da UC7.
5. A entrega final e a apresentação seguem os prazos, formatos e critérios da **DreamShaper**.

---

## Alinhamento com a DreamShaper

Na plataforma, o projeto é acompanhado pelas seguintes etapas:

### Planejamento

- Abertura
- Tema Gerador
- Mapa de empatia
- Preparação do plano
- Cronograma preliminar

### Problematização

### Desenvolvimento

### Síntese

O grupo deve preencher cada etapa na DreamShaper e manter comunicação com o docente. As orientações deste README ajudam a começar, mas **não substituem os campos e critérios da plataforma**.

### Como preencher o Tema Gerador

| Campo da plataforma | O que registrar |
| :--- | :--- |
| **Orientação** | Leia com atenção as orientações do docente e mantenha o grupo alinhado sobre tema, prazos e responsabilidades. |
| **Contexto do Tema Gerador** | Descreva o cenário profissional, a organização ou a situação que será investigada, relacionando-a à área do curso e aos conteúdos da UC7. |
| **Passos que antecederam o projeto** | Registre as conversas, debates, aulas, pesquisas exploratórias ou estudos de caso que ajudaram o grupo a compreender o tema. |
| **Evidências de pesquisa** | Anexe ou registre links, documentos, anotações, imagens e outros materiais que fundamentam a leitura inicial do cenário. |

> Use o modelo [`passos-que-antecedem-o-projeto.docx`](passos-que-antecedem-o-projeto.docx) para preencher o campo **“Passos que antecederam o projeto”**. Depois de preencher, exporte em PDF e anexe na DreamShaper.

### Sugestões de Tema Gerador por grupo

#### Grupo 1 — Serviços de rede e identidade

- **Tema Gerador:** serviços de redes e identidade em pequenas e médias empresas.
- **Contexto:** uma empresa precisa organizar contas, permissões, nomes e arquivos em uma rede local, avaliando soluções como Active Directory, Samba, FreeIPA, DNS e DHCP.
- **Passos anteriores:** discussões em sala sobre identidade, DNS, DHCP e compartilhamentos; levantamento de dúvidas; pesquisa exploratória inicial.
- **Evidências de pesquisa:** documentação da Microsoft Learn, Samba, FreeIPA, BIND9 e ISC DHCP; anotações e comparativos iniciais.

#### Grupo 2 — Redes, firewall e serviços web

- **Tema Gerador:** redes, firewall e serviços web em redes locais.
- **Contexto:** uma empresa precisa segmentar a rede, controlar o acesso à internet e publicar aplicações web com segurança e disponibilidade.
- **Passos anteriores:** discussões sobre TCP/IP, NAT, firewall e servidores web; levantamento de requisitos; pesquisa exploratória inicial.
- **Evidências de pesquisa:** documentação do pfSense, IIS, Apache, Nginx, OWASP e CIS Benchmarks; diagramas e anotações.

#### Grupo 3 — Segurança, continuidade e operação

- **Tema Gerador:** segurança, continuidade e operação de servidores locais.
- **Contexto:** uma empresa precisa proteger dados, garantir backup e acompanhar a operação dos serviços, considerando riscos, monitoramento e governança.
- **Passos anteriores:** discussões sobre backup, monitoramento, riscos e governança; levantamento de incidentes comuns; pesquisa exploratória inicial.
- **Evidências de pesquisa:** NIST, ISO 27001, LGPD, Zabbix, Prometheus, Grafana, Bacula, Veeam e CIS Controls; anotações.

---

## Temas por grupo

### Grupo 1 — Serviços de rede e identidade

1. **Active Directory x alternativas Linux para gestão de identidades**
   - Pesquisa comparativa entre AD DS (Windows Server) e soluções como Samba 4 e FreeIPA.
   - Estrutura de domínio, OUs, usuários, grupos, GPOs, custo, complexidade e cenários de uso.

2. **DNS e DHCP em redes locais: Windows Server x BIND9/ISC DHCP**
   - Comparação de configuração, zonas, escopos, reservas e integração com o domínio.
   - Disponibilidade, segurança, administração e boas práticas em redes locais.

3. **Servidor de arquivos, permissões e quotas: Windows Server x Samba**
   - Análise de compartilhamentos, ACLs, permissões, quotas, GPOs e backup.
   - Controle de acesso e organização de pastas por setor em pequenas e médias empresas.

### Grupo 2 — Redes, firewall e serviços web

1. **pfSense em redes locais: segmentação, NAT, firewall e VPN**
   - Estudo de regras de firewall, VLANs, NAT, VPN e boas práticas de segurança.
   - Aplicação em pequenas e médias empresas e comparação com outras soluções.

2. **Publicação de aplicações web em servidores locais: IIS x Apache/Nginx**
   - Comparação de instalação, VirtualHosts, HTTPS, PHP e integração com banco de dados.
   - Desempenho, segurança, manutenção e cenários de uso.

3. **Hardening e administração remota de servidores Linux**
   - SSH, usuários, sudo, permissões, firewall, atualizações e logs.
   - Monitoramento, auditoria e boas práticas de segurança em servidores Linux.

### Grupo 3 — Segurança, continuidade e operação

1. **Backup e recuperação de desastres em servidores locais**
   - Estratégias de backup, backup completo e incremental, retenção e testes de restauração.
   - RPO, RTO, continuidade de negócios e proteção de dados.

2. **Monitoramento e troubleshooting de redes e servidores**
   - Ferramentas como Zabbix, Prometheus e Grafana, SNMP, logs e alertas.
   - Métricas, diagnóstico de falhas e resposta a incidentes.

3. **Governança de TI e segurança da informação em redes locais**
   - LGPD, políticas de acesso, gestão de riscos, auditoria e certificações.
   - Continuidade de negócios e boas práticas de governança.

---

## Norte para começar a pesquisa

Antes de iniciar, o grupo deve:

1. Ler os três temas recebidos e escolher **um**.
2. Delimitar uma **pergunta de pesquisa** e um recorte viável.
3. Levantar **palavras-chave** e **fontes oficiais**.
4. Definir **critérios de comparação** antes de pesquisar as soluções.
5. Registrar as fontes e os achados na **DreamShaper** desde o início.

### Grupo 1 — Serviços de rede e identidade

**Pergunta de pesquisa:** como escolher e justificar soluções de identidade, DNS/DHCP e arquivos para uma pequena ou média empresa?

**Palavras-chave:** Active Directory DS, Samba 4, FreeIPA, LDAP, Kerberos, GPO, BIND9, ISC DHCP, DNS/DHCP no Windows Server, NTFS, ACL, quotas e compartilhamentos Samba.

**Fontes iniciais:** Microsoft Learn (AD DS, DNS, DHCP e GPO), documentação do Samba, FreeIPA, ISC/BIND, Ubuntu Server e Red Hat.

**Primeiros passos:**

1. Escolha um dos três temas do grupo e defina uma empresa fictícia com número de usuários, setores e necessidades.
2. Liste os requisitos: autenticação, permissões, disponibilidade, custo, segurança e facilidade de administração.
3. Monte uma matriz de comparação com critérios e pesos.
4. Pesquise cada solução em fontes oficiais e registre os achados.
5. Conclua com uma recomendação justificada e com as limitações do estudo.

**Critérios de comparação:** custo, complexidade, segurança, integração, escalabilidade, suporte e curva de aprendizado.

### Grupo 2 — Redes, firewall e serviços web

**Pergunta de pesquisa:** como segmentar, proteger e publicar serviços web em uma rede local com segurança e disponibilidade?

**Palavras-chave:** pfSense, NAT, VLAN, firewall, VPN, IDS/IPS, IIS, Apache, Nginx, HTTPS, PHP, banco de dados, hardening, SSH, UFW e fail2ban.

**Fontes iniciais:** documentação do pfSense/Netgate, Microsoft IIS, Apache, Nginx, OWASP, CIS Benchmarks e Ubuntu Server.

**Primeiros passos:**

1. Escolha um dos três temas do grupo e defina um cenário de rede com setores e serviços.
2. Desenhe a topologia e liste os fluxos que devem ser permitidos ou bloqueados.
3. Defina os critérios de comparação antes de analisar as ferramentas.
4. Pesquise configurações e boas práticas nas fontes oficiais.
5. Apresente a recomendação, os riscos e as limitações.

**Critérios de comparação:** segurança, desempenho, disponibilidade, custo, complexidade, manutenção e aderência ao cenário.

### Grupo 3 — Segurança, continuidade e operação

**Pergunta de pesquisa:** como garantir continuidade, monitoramento e governança em servidores locais?

**Palavras-chave:** backup 3-2-1, RPO, RTO, recuperação de desastres, rsync, Bacula, Veeam, Zabbix, Prometheus, Grafana, SNMP, LGPD, gestão de riscos, ISO 27001 e CIS Controls.

**Fontes iniciais:** NIST, ISO 27001, LGPD, documentação do Zabbix, Prometheus e Grafana, Bacula, Veeam e CIS Benchmarks.

**Primeiros passos:**

1. Escolha um dos três temas do grupo e defina os ativos críticos e os riscos.
2. Estabeleça os requisitos: RPO/RTO, métricas, políticas e responsabilidades.
3. Compare ferramentas e abordagens com critérios claros.
4. Estruture o plano ou dossiê com etapas, responsáveis e testes.
5. Conclua com recomendações, riscos e limitações.

**Critérios de comparação:** cobertura, confiabilidade, custo, complexidade, segurança, conformidade e facilidade de operação.

---

## Entrega

A entrega segue o **mesmo formato para os três grupos**. Cada grupo escolhe **1 dos 3 temas** recebidos e entrega apenas o trabalho referente ao tema escolhido.

### Formato comum

1. **Relatório de pesquisa** em PDF ou Word, com 8 a 12 páginas.
2. **Apresentação e defesa oral** de 10 a 15 minutos.
3. **Anexos** com tabelas comparativas, diagramas, checklists e fontes.
4. **Submissão na DreamShaper**, conforme prazos e formato da plataforma.

### Estrutura mínima do relatório

- Capa com tema, grupo e integrantes.
- Introdução: contexto, problema e pergunta de pesquisa.
- Objetivos.
- Metodologia: fontes e critérios de comparação.
- Desenvolvimento: análise e comparação das soluções.
- Resultados: quadro comparativo, recomendações e limitações.
- Conclusão.
- Referências.
- Declaração de uso de IA.

### O que a entrega deve deixar claro

Independentemente do tema escolhido, o trabalho deve apresentar:

- **qual é o tema e o problema ou pergunta de pesquisa**;
- **quais objetivos** o grupo definiu;
- **quais fontes** foram pesquisadas;
- **quais soluções ou abordagens** foram comparadas;
- **quais resultados e conclusões** o grupo chegou;
- **quais riscos, limitações e recomendações** existem;
- **como o trabalho se conecta aos conteúdos da UC7**;
- **quais referências** foram usadas.

### Entregas específicas por tema

| Grupo | Tema | Entrega principal | Artefatos esperados |
| :--- | :--- | :--- | :--- |
| **1** | Active Directory x alternativas Linux | Relatório comparativo e recomendação para uma PME | Matriz AD DS x Samba 4 x FreeIPA; desenho lógico do domínio; análise de custo, complexidade e segurança |
| **1** | DNS e DHCP: Windows Server x BIND9/ISC DHCP | Relatório comparativo e proposta de serviço de nomes/endereçamento | Tabela de zonas, escopos e reservas; exemplos de configuração; análise de disponibilidade e segurança |
| **1** | Servidor de arquivos: Windows Server x Samba | Relatório e proposta de compartilhamento seguro | Estrutura de pastas, matriz de permissões/ACLs, política de quotas, GPOs e plano de backup |
| **2** | pfSense: segmentação, NAT, firewall e VPN | Relatório e proposta de segurança de rede | Diagrama de segmentação; tabela de regras, NAT e VPN; análise de riscos e comparação com alternativas |
| **2** | IIS x Apache/Nginx | Relatório comparativo e proposta de publicação web | Quadro comparativo; checklist de HTTPS, PHP e banco; análise de desempenho, segurança e manutenção |
| **2** | Hardening e administração remota Linux | Relatório e checklist de hardening | Checklist antes/depois; configuração de SSH, sudo e firewall; política de atualizações e logs |
| **3** | Backup e recuperação de desastres | Relatório e plano de backup/continuidade | Estratégia 3-2-1; definição de RPO/RTO; cronograma; simulação de restauração |
| **3** | Monitoramento e troubleshooting | Relatório e proposta de monitoramento | Mapa de métricas e alertas; comparação de ferramentas; fluxo de resposta a incidentes; esboço de dashboard |
| **3** | Governança de TI e segurança da informação | Relatório e dossiê de governança | Matriz de riscos; políticas de acesso; adequação à LGPD; roadmap de certificações |

### Distribuição da nota sugerida

| Componente | Peso |
| :--- | :---: |
| Relatório de pesquisa | 50% |
| Apresentação e defesa | 25% |
| Anexos e qualidade das fontes | 15% |
| Participação e organização do grupo | 10% |

> Os pesos finais e o formato de submissão são os definidos na DreamShaper e pelo docente.

---

## Critérios de avaliação sugeridos

| Critério | O que será observado |
| :--- | :--- |
| Pesquisa e fontes | Qualidade, profundidade, atualidade e pertinência das fontes |
| Desenvolvimento do tema | Coerência entre o problema, a pesquisa e as conclusões |
| Comparação e análise | Capacidade de comparar soluções, apontar vantagens e limitações |
| Conexão com a UC7 | Uso dos conceitos e ferramentas trabalhados na UC |
| Organização e comunicação | Estrutura do trabalho, clareza, referências e apresentação |
| Acompanhamento na DreamShaper | Cumprimento das etapas, prazos e formatos da plataforma |

Os pesos e os critérios finais são os definidos na DreamShaper e pelo docente.

---

## Regras de trabalho

- O trabalho é **em grupo**, conforme a divisão da turma em **3 grupos**.
- Cada grupo escolhe **1 tema** entre as **3 opções** recebidas.
- O tema é desenvolvido como **pesquisa**, com fontes confiáveis.
- O acompanhamento e a entrega seguem a plataforma **DreamShaper**.
- Use apenas dados fictícios ou públicos.
- Cite todas as fontes consultadas.
- Declare o uso de ferramentas de IA, se houver.
- Não publique senhas, dados pessoais ou informações sensíveis.

---

## Etapas e entregas na DreamShaper

As datas são definidas pelo docente e pela plataforma. O grupo deve registrar cada etapa na DreamShaper:

| Etapa | O que o grupo registra |
| :--- | :--- |
| **Planejamento — Abertura** | Integrantes, tema escolhido e alinhamento inicial com o docente |
| **Planejamento — Tema Gerador** | Contexto profissional, passos anteriores e evidências de pesquisa |
| **Planejamento — Mapa de empatia** | Necessidades, dores e expectativas dos envolvidos no cenário estudado |
| **Planejamento — Preparação do plano** | Objetivos, recorte, fontes e estratégia de pesquisa |
| **Planejamento — Cronograma preliminar** | Etapas, responsáveis e prazos do grupo |
| **Problematização** | Pergunta de pesquisa, justificativa e objetivos |
| **Desenvolvimento** | Pesquisa, comparação de soluções, análise e achados |
| **Síntese** | Conclusões, recomendações, limitações e entrega final |

---

## Referências

- **Plataforma DreamShaper** — trilha de pesquisa, modelos e entrega do projeto (acesso institucional).
- Competências e organização da UC: [`../../docs/04_plano-de-aulas.md`](../../docs/04_plano-de-aulas.md)
- Materiais complementares: [`../../docs/05_materiais-complementares.md`](../../docs/05_materiais-complementares.md)
