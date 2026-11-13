# Atividade - Aula 29: Backup, continuidade e recuperação de dados

**Entrega:** Plano de backup e continuidade com evidências de restauração e RPO/RTO.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Definir e testar a rotina de backup, restauração e continuidade dos dados do ambiente.

## Contexto

A NexaTech já compartilha arquivos no Windows Server; agora precisa garantir que esses dados sobrevivam a exclusões acidentais e falhas.

## O que deve ser entregue

Plano de backup e continuidade com evidências de restauração e RPO/RTO.

## Etapas

1. Definir o que será copiado (pastas compartilhadas no Windows e dados do Linux)
2. Criar uma rotina de backup com rsync
3. Incluir o banco de dados do DB01 na rotina de backup
4. Agendar a rotina com systemd timer
5. Simular exclusão de arquivo e restaurar a versão anterior
6. Definir RPO/RTO e documentar a retenção

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Se o backup nunca foi testado, ele realmente existe?

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
