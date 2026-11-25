# Roteiro Prático Passo a Passo — Aula 15: GPOs e Políticas de Segurança Corporativas

## 1. Identificação
- **Tema:** Group Policy Objects (GPOs)
- **Ambiente:** Servidor DC01 e Clientes Windows 10
- **Console Principal:** Group Policy Management (`gpmc.msc`)

---

## 2. Objetivos
1. Criar uma política corporativa de senhas na raiz do domínio.
2. Criar uma GPO de bloqueio automático de tela após inatividade na OU Computadores.
3. Criar uma GPO de Mapeamento Automático da unidade de rede `Z:`.
4. Forçar e diagnosticar a aplicação das políticas nos clientes com `gpupdate` e `gpresult`.

---

## 3. Passo a Passo Detalhado (No Servidor DC01)

### Parte A — Política de Complexidade de Senhas
1. Abra **Server Manager &rarr; Tools &rarr; Group Policy Management (`gpmc.msc`)**.
2. Expanda `Forest: nexatech.local &rarr; Domains &rarr; nexatech.local`.
3. Clique com o botão direito na **Default Domain Policy** &rarr; **Edit...**.
4. Navegue até:
   ```text
   Computer Configuration -> Policies -> Windows Settings -> Security Settings -> Account Policies -> Password Policy
   ```
5. Configure os seguintes itens:
   - **Minimum password length (Tamanho mínimo):** 8 caracteres.
   - **Password must meet complexity requirements:** Enabled.
   - **Maximum password age (Validade máxima):** 60 dias.
6. Feche o editor de GPO.

---

### Parte B — Mapeamento Automático de Unidade de Rede (Drive Mapping)
1. No console `gpmc.msc`, clique com botão direito na sub-OU **NexaTech** &rarr; **Create a GPO in this domain, and Link it here...**.
2. **Name:** `GPO_Mapeamento_Rede_Z` &rarr; Clique em **OK**.
3. Clique com o botão direito na nova GPO &rarr; **Edit...**.
4. Navegue até:
   ```text
   User Configuration -> Preferences -> Windows Settings -> Drive Maps
   ```
5. Clique com o botão direito em **Drive Maps &rarr; New &rarr; Mapped Drive**:
   - **Action:** Update (Atualizar).
   - **Location:** `\\DC01\Financeiro` (ou a pasta do setor).
   - **Reconnect:** Marcado.
   - **Drive Letter:** Usar a letra `Z:`.
   - Clique em **Apply** e **OK**.

---

## 4. Testes e Validação no Cliente

1. Vá até a VM cliente Windows 10.
2. Abra o CMD ou PowerShell e execute o comando para forçar a sincronização de políticas:
   ```cmd
   gpupdate /force
   ```
3. Abra o **Explorador de Arquivos &rarr; Este Computador**.
4. *Resultado esperado:* A unidade de rede `Z:` surge mapeada automaticamente apontando para o servidor, sem intervenção manual do usuário!
5. Para auditar todas as GPOs aplicadas com sucesso:
   ```cmd
   gpresult /r
   ```
   *Confira na lista de 'Applied Group Policy Objects' se constam a `Default Domain Policy` e a `GPO_Mapeamento_Rede_Z`.*
