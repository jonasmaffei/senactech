# Aula 21 - Backup, continuidade e resposta a incidentes

**Data sugerida:** 14/12/2026 (segunda-feira)  
**Bloco:** 4 - Monitoramento, Nuvem, Governança e Projeto  
**Carga:** 4 horas

---

## Objetivo

Definir estratégia de backup, continuidade de negócio e resposta a incidentes para a NexaTech.

---

## Situação de aprendizagem

Um simulado de ransomware será executado na aula. A empresa precisa saber o que restaurar, em quanto tempo e quem toma cada decisão durante uma crise.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Mini plano de continuidade com RPO, RTO, backups e playbook de incidentes. |
| `apresentacao_aula21.html` | Slides de conceito (a produzir) |
| `laboratorio_virtual/` | Roteiro prático nas VMs (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| RPO e RTO |
| Regra 3-2-1 e cópias imutáveis ou offline |
| Backup completo, incremental e diferencial |
| Retenção e descarte seguro |
| Plano de continuidade e recuperação de desastres |
| Resposta a incidentes: preparar, detectar, conter, erradicar, recuperar e aprender |
| Comunicação e notificação LGPD |

### Ferramentas

Backup do Windows Server, rsync, snapshots, playbook

---

## Prática em laboratório

Simulado de indisponibilidade com restauração cronometrada.

1. Executar um simulado de falha e restaurar os serviços
2. Medir o tempo de recuperação
3. Criar um playbook de resposta a incidentes
4. Registrar lições aprendidas

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Mini plano de continuidade com RPO, RTO, backups e playbook de incidentes.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Se o servidor principal falhar agora, qual serviço deve voltar primeiro e por quê?

---

## Relação com o projeto

Protege tudo o que foi construído nos blocos anteriores.

**O que fica em aberto:** A empresa precisa decidir o que mantém na própria infraestrutura e o que vai para a nuvem.

**Impacto de negócio:** Continuidade evita perda de receita, reputação e obrigações legais.


## Próxima aula

**Aula 22 - Computação em nuvem e tecnologias emergentes.** A escolha tecnológica precisa ser sustentada por governança e conformidade.

---

> Voltar para o [índice do Bloco 4](../README.md).
