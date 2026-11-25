# Aula 11 - Unidades Organizacionais (OUs), Grupos de Domínio e Delegação

**Bloco:** 2 - Windows Server  
**Carga:** 3 horas (1 encontro)  

---

## Objetivo

Organizar a estrutura corporativa dentro do Active Directory utilizando Unidades Organizacionais (OUs), Grupos Globais/Locais de Domínio e delegação administrativa, evoluindo a gestão local das Aulas 07 e 08 para um modelo empresarial centralizado.

---

## Contexto de Negócio

Nas Aulas 07 e 08, a equipe gerenciou usuários locais máquina por máquina. Agora que o servidor é um Controlador de Domínio (AD DS), a NexaTech precisa estruturar os setores no Active Directory em **OUs** para permitir aplicação futura de GPOs e delegação de suporte.

---

## Conteúdo Programático

1. **O que muda em relação ao que já fizemos:**
   - Nas Aulas 07 e 08: Usuários e grupos locais criados no `compmgmt.msc` (base SAM local de uma máquina só).
   - Na Aula 11: Criação centralizada no **Active Directory Users and Computers (`dsa.msc`)**, válida para toda a rede.
2. **Estrutura de OUs da NexaTech:**
   - Criação da OU raiz `NexaTech` e sub-OUs: `Diretoria`, `Financeiro`, `Gerencia`, `Secretaria`, `TI`, `Computadores`.
3. **Estratégia AGDLP no AD:**
   - Diferença entre Grupos Globais (ex: `GG_Financeiro`) e Grupos Locais de Domínio (ex: `DL_PastaFinanceiro_RW`).
4. **Delegação de Controle:**
   - Como conceder ao estagiário de TI permissão de resetar senhas da OU Secretaria sem torná-lo Administrador do Domínio.

---

## Prática de Laboratório

1. Abrir o console **Active Directory Users and Computers (`dsa.msc`)** no DC01.
2. Criar a estrutura hierárquica de OUs da empresa.
3. Migrar os usuários dos setores para dentro de suas respectivas OUs.
4. Criar os grupos de segurança de domínio e associar as contas corporativas.
5. Delegar controle de redefinição de senha na OU Secretaria para o usuário da TI.
