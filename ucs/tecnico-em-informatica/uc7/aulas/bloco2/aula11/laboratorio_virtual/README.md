# Roteiro Prático Passo a Passo — Aula 11: Estrutura de OUs, Grupos de Domínio e Delegação

## 1. Identificação
- **Tema:** Unidades Organizacionais (OUs), Grupos Globais e Delegação de Controle
- **Ambiente:** Servidor DC01 (`nexatech.local`)
- **Console Principal:** Active Directory Users and Computers (`dsa.msc`)

---

## 2. Objetivos
1. Criar a árvore hierárquica de OUs da empresa NexaTech.
2. Criar os Grupos Globais de Domínio por setor.
3. Criar os usuários do domínio associados aos seus respectivos grupos.
4. Aplicar a Delegação de Controle na OU Secretaria para o usuário de TI.
5. Testar a governança a partir de uma estação cliente ingressada no domínio.

---

## 3. Passo a Passo Detalhado (No Servidor DC01)

### Parte A — Criar a Estrutura de OUs
1. No DC01, abra o **Server Manager → Tools → Active Directory Users and Computers (`dsa.msc`)**.
2. Clique com o botão direito no domínio `nexatech.local` &rarr; **New &rarr; Organizational Unit**.
3. No nome, digite: `NexaTech`.
   - Certifique-se de marcar a opção: *"Protect container from accidental deletion"*.
   - Clique em **OK**.
4. Agora clique com o botão direito **dentro da OU NexaTech** recém-criada &rarr; **New &rarr; Organizational Unit** e crie:
   - `Financeiro`
   - `Gerencia`
   - `Secretaria`
   - `TI`
   - `Computadores`
5. Mova os computadores clientes que estão na pasta raiz `Computers` para dentro da sub-OU `NexaTech/Computadores`.

---

### Parte B — Criar os Grupos de Segurança de Domínio
1. Clique com o botão direito dentro da sub-OU `Financeiro` &rarr; **New &rarr; Group**:
   - **Group name:** `GG_Financeiro`
   - **Group scope:** Global
   - **Group type:** Security
   - Clique em **OK**.
2. Repita o processo nas respectivas OUs:
   - Na OU `Gerencia`: criar `GG_Gerencia`
   - Na OU `Secretaria`: criar `GG_Secretaria`
   - Na OU `TI`: criar `GG_TI`

---

### Parte C — Criar os Usuários Corporativos
1. Dentro da OU `Financeiro`, clique com botão direito &rarr; **New &rarr; User**:
   - **First name:** Ana
   - **Last name:** Finanças
   - **User logon name:** `ana.financeiro` (UPN: `ana.financeiro@nexatech.local`)
   - Clique em **Next**.
   - Defina a senha (ex: `Senha@123`).
   - Marque: *"Password never expires"* (para fins didáticos de laboratório).
   - Clique em **Next &rarr; Finish**.
2. Clique com botão direito na usuária `ana.financeiro` &rarr; **Add to a group...** &rarr; Digite `GG_Financeiro` &rarr; **Check Names** &rarr; **OK**.
3. Crie os demais usuários nas suas respectivas OUs:
   - Na OU `Secretaria`: `carlos.secretaria` &rarr; Membro de `GG_Secretaria`.
   - Na OU `TI`: `marcos.suporte` &rarr; Membro de `GG_TI`.

---

### Parte D — Configurar a Delegação de Tarefas (Delegação de Controle)
1. Clique com o botão direito na sub-OU **Secretaria** &rarr; **Delegate Control... (Delegar Controle)**.
2. Na tela de boas-vindas do assistente, clique em **Next**.
3. Clique em **Add...** &rarr; Digite `marcos.suporte` &rarr; Clique em **Check Names** &rarr; **OK** &rarr; **Next**.
4. Na tela *Tasks to Delegate (Tarefas a Delegar)*:
   - Marque a caixa: **Reset user passwords and force password change at next logon**.
   - Marque a caixa: **Read all user information**.
   - Clique em **Next &rarr; Finish**.

---

## 4. Testes e Validação no Cliente

1. Vá até a VM cliente `CLI-FIN`.
2. Na tela de login, entre com a credencial criada:
   - **Usuário:** `ana.financeiro@nexatech.local` (ou `NEXATECH\ana.financeiro`)
   - **Senha:** `Senha@123`
3. O Windows criará o perfil de usuário corporativo normalmente.
4. Acesse a pasta compartilhada `\\DC01\Financeiro` e confirme o acesso total aos arquivos do setor.
