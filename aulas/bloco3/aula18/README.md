# Aula 18 - Arquivos, backup e interoperabilidade Linux

**Data sugerida:** 09/12/2026 (quarta-feira)  
**Bloco:** 3 - Linux Server e Segurança  
**Carga:** 4 horas

---

## Objetivo

Configurar compartilhamento de arquivos, backup e integração do Linux com clientes Windows.

---

## Situação de aprendizagem

A NexaTech precisa que o servidor Linux também compartilhe arquivos com os clientes Windows e que os dados sejam recuperáveis após exclusão acidental ou falha.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Plano de backup e interoperabilidade com evidências de restauração. |
| [`apresentacao_aula18.html`](apresentacao_aula18.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com Vagrant + VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Samba: compartilhamentos, usuários e permissões |
| NFS para clientes Linux |
| rsync, tar e backup incremental |
| Regra 3-2-1 e política de retenção |
| Testes de restauração |
| Integração com AD via winbind ou sssd |
| Quotas e monitoramento de espaço |

### Ferramentas

Samba, rsync, tar, systemd timer, Windows Explorer

---

## Prática em laboratório

Compartilhamento Samba e rotina de backup com restauração testada.

1. Configurar um compartilhamento Samba e acessar pelo Windows
2. Criar rotina de backup com rsync
3. Simular exclusão de arquivo e restaurar a versão anterior
4. Documentar permissões e retenção

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Plano de backup e interoperabilidade com evidências de restauração.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que um backup que nunca foi restaurado não pode ser considerado confiável?

---

## Relação com o projeto

Integra o Linux ao dia a dia dos usuários Windows e protege os dados da empresa.

**O que fica em aberto:** Windows e Linux já compartilham recursos; falta testar o ambiente integrado e diagnosticar falhas.

**Impacto de negócio:** Backup testado é a diferença entre uma falha e um desastre.


## Próxima aula

**Aula 19 - Laboratório integrado e troubleshooting.** O ambiente funciona, mas ainda não está sendo observado de forma contínua.

---

> Voltar para o [índice do Bloco 3](../README.md).
