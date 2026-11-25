# Atividade - Aula 11: Estrutura Organizacional e Grupos no Active Directory

**Entrega:** Documentação e prints da estrutura de OUs, Grupos de Domínio e teste de Delegação de Controle no DC01.  
**Formato:** Individual ou em dupla  
**Carga:** 3 horas  

---

## Objetivo

Substituir o modelo de contas locais das Aulas 07/08 pela governança corporativa no Active Directory através de OUs e Grupos Globais.

---

## Etapas da Atividade

1. **Criar a árvore de OUs no Active Directory (`dsa.msc`):**
   - OU `NexaTech`
     - `Financeiro`
     - `Gerencia`
     - `Secretaria`
     - `TI`
     - `Computadores`
2. **Criar os Grupos Globais de Domínio:**
   - `GG_Financeiro`, `GG_Gerencia`, `GG_Secretaria`, `GG_TI`.
3. **Criar os Usuários de Domínio:**
   - Criar contas corporativas padronizadas com UPN (ex: `financeiro@nexatech.local`).
4. **Delegação de Tarefas:**
   - Botão direito na OU `Secretaria` -> **Delegate Control** -> atribuir ao usuário de TI a permissão de redefinir senhas e desbloquear contas.
5. **Evidências:**
   - Print da árvore de OUs expandida.
   - Print das propriedades de um usuário demonstrando associação ao grupo de domínio.
