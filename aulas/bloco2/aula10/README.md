# Aula 10 - Compartilhamento de arquivos e permissões

**Data sugerida:** 26/11/2026 (quinta-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 4 horas

---

## Objetivo

Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.

---

## Situação de aprendizagem

A NexaTech guarda contratos, propostas e documentos fiscais em uma pasta compartilhada sem controle. A diretoria quer acesso por setor, rastreabilidade e possibilidade de recuperar arquivos apagados.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Matriz de permissões e relatório de testes de acesso. |
| [`apresentacao_aula10.html`](apresentacao_aula10.html) | Slides de conceito (abra no navegador) |
| `laboratorio_virtual/` | Roteiro prático no VirtualBox (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| SMB e compartilhamentos de rede |
| Permissões de compartilhamento versus NTFS |
| Herança, acesso efetivo e princípio do menor privilégio |
| Modelo AGDLP: contas, grupos globais, grupos locais de domínio e permissões |
| Quotas e File Server Resource Manager |
| Shadow Copies e versões anteriores |
| Backup, DFS e auditoria de acesso |

### Ferramentas

Windows Server, Explorador de Arquivos, FSRM, PowerShell

---

## Prática em laboratório

Servidor de arquivos com pastas departamentais e permissões testadas.

1. Criar pastas por setor e compartilhar via SMB
2. Aplicar permissões NTFS usando grupos
3. Configurar quotas e cópias de sombra
4. Mapear unidades e testar acessos permitidos e negados

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Matriz de permissões e relatório de testes de acesso.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que a permissão efetiva é a mais restritiva entre compartilhamento e NTFS?

---

## Relação com o projeto

Entrega o serviço que mais afeta o dia a dia dos usuários da NexaTech.

**O que fica em aberto:** As permissões estão corretas, mas precisam ser aplicadas de forma padronizada em todos os computadores.

**Impacto de negócio:** Controle de acesso a arquivos reduz vazamentos, perdas e retrabalho jurídico.


## Próxima aula

**Aula 11 - GPOs e políticas de segurança.** O ambiente interno está padronizado; falta publicar serviços e permitir administração remota segura.

---

> Voltar para o [índice do Bloco 2](../README.md).
