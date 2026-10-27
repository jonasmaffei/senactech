# Aula 13 - Automação e monitoramento no Windows Server

**Data sugerida:** 01/12/2026 (terça-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 4 horas

---

## Objetivo

Automatizar tarefas rotineiras e monitorar a saúde do Windows Server com ferramentas nativas.

---

## Situação de aprendizagem

A equipe percebeu que verifica espaço em disco, serviços e backups manualmente todos os dias. Isso consome tempo e ainda deixa falhas passarem. É hora de automatizar e registrar evidências.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Script de automação e plano de monitoramento do Windows Server. |
| [`apresentacao_aula13.html`](apresentacao_aula13.html) | Slides de conceito (abra no navegador) |
| `laboratorio_virtual/` | Roteiro prático no VirtualBox (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| PowerShell: cmdlets, pipeline, variáveis e scripts |
| Agendador de Tarefas |
| Visualizador de Eventos e logs |
| Monitor de Desempenho e conjuntos de coletores |
| Windows Update e WSUS |
| Relatórios de backup e alertas |
| PowerShell Remoting e boas práticas de script |

### Ferramentas

PowerShell, Task Scheduler, Event Viewer, Performance Monitor

---

## Prática em laboratório

Rotina automatizada de verificação e coleta de métricas no Windows Server.

1. Criar script que verifica disco, serviços e eventos críticos
2. Agendar o script no Task Scheduler
3. Criar um data collector set no Performance Monitor
4. Gerar um relatório simples e analisar os resultados

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Script de automação e plano de monitoramento do Windows Server.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** O que deve ser monitorado para prever uma falha antes que o usuário perceba?

---

## Relação com o projeto

Fecha o Bloco 2 com o ambiente Windows operável e observável.

**O que fica em aberto:** A empresa também precisa de serviços abertos e de baixo custo; entra o Linux.

**Impacto de negócio:** Automação reduz tempo de reação e libera a equipe para tarefas de maior valor.


## Próxima aula

**Aula 14 - Instalação e configuração inicial do Linux Server.** Instalado o sistema, é preciso aprender a operá-lo no dia a dia.

---

> Voltar para o [índice do Bloco 2](../README.md).
