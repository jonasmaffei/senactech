# Roteiro Prático Passo a Passo — Aula 10: Ingresso de Estações Clientes no Domínio (Domain Join)

## 1. Identificação
- **Tema:** Ingresso de Clientes e Autenticação de Domínio
- **Ambiente:** Oracle VM VirtualBox (Rede Interna `rede-nexatech`)
- **VMs:**
  - Servidor: `DC01` (`192.168.10.2`) com domínio `nexatech.local` ativo.
  - Clientes: `CLI-FIN`, `CLI-GER`, `CLI-SEC` (Windows 10/11).

---

## 2. Objetivos
Ao final desta atividade, o estudante será capaz de:
1. Configurar o apontamento de DNS das estações clientes para o IP do DC01.
2. Testar a resolução do registro SRV do Active Directory pelo cliente.
3. Ingressar as 3 máquinas virtuais no domínio `nexatech.local`.
4. Validar o registro automático da conta de computador no console do AD.
5. Realizar o primeiro logon com credencial de domínio.

---

## 3. O Passo Crítico: Ajuste do DNS no Cliente

> **ATENÇÃO:** O cliente NUNCA conseguirá ingressar no domínio se o seu DNS primário estiver apontando para o roteador, para o Google (`8.8.8.8`) ou obtido automaticamente sem o DC01!

### No Cliente Windows (ex: CLI-FIN):
1. Pressione `Win + R`, digite `ncpa.cpl` e pressione Enter.
2. Clique com o botão direito no adaptador de rede (ex: *Ethernet*) e selecione **Propriedades**.
3. Dê duplo clique em **Protocolo IP Versão 4 (TCP/IPv4)**.
4. Mantenha o IP estático da máquina (ex: `192.168.10.100`).
5. No campo **Servidor DNS Preferencial**, configure OBRIGATORIAMENTE:
   ```text
   192.168.10.2   (ou o IP exato do seu DC01)
   ```
6. Clique em **OK** e **OK**.

---

## 4. Teste de Conectividade e Resolução antes do Join

No cliente, abra o CMD ou PowerShell e execute:
```cmd
# 1. Testar se alcança o servidor:
ping 192.168.10.2

# 2. Testar se o DNS do servidor responde pelo nome do domínio:
nslookup nexatech.local
```
*Saída obrigatória:* O comando `nslookup` deve responder com o IP do DC01 (`192.168.10.2`). Se responder "Não foi possível encontrar", revise o passo 3!

---

## 5. Passo a Passo do Ingresso no Domínio (GUI)

1. No cliente, pressione `Win + R`, digite `sysdm.cpl` e pressione Enter (abre as Propriedades do Sistema).
2. Na aba **Nome do Computador**, clique no botão **Alterar... (Change...)**.
3. Na parte inferior, em *Membro de*:
   - Mude de **Grupo de trabalho (Workgroup)** para **Domínio (Domain)**.
   - Digite exatamente:
     ```text
     nexatech.local
     ```
4. Clique em **OK**.
5. Uma janela de autenticação solicitará usuário e senha:
   - **Nome de usuário:** `NEXATECH\Administrador` (ou `Administrador@nexatech.local`)
   - **Senha:** A senha do Administrador do DC01.
6. Clique em **OK**.
7. Após alguns segundos, surgirá a mensagem de sucesso:
   > *"Bem-vindo ao domínio nexatech.local."*
8. Clique em **OK**. O Windows avisará que o computador precisa ser reiniciado.
9. Clique em **Reiniciar Agora**.

---

## 6. Procedimento Rápido via PowerShell (No Cliente)

Em vez da interface gráfica, você pode ingressar a máquina com um comando no PowerShell de Administrador:
```powershell
Add-Computer -DomainName "nexatech.local" -Credential (Get-Credential) -Restart -Force
```
*(Digite o usuário `NEXATECH\Administrador` e a senha na janela que surgir).*

---

## 7. Verificação no Servidor DC01

1. Vá até o servidor Windows Server (DC01).
2. Abra o **Server Manager → Tools → Active Directory Users and Computers (`dsa.msc`)**.
3. Expanda o domínio `nexatech.local` e clique na pasta **Computers**.
4. Confira que os computadores clientes (`CLI-FIN`, etc.) aparecem listados com seus nomes oficiais.

---

## 8. Matriz de Testes e Critério de Aceite

1. **Logon de Teste no Cliente:**
   - Na tela de login do Windows 10, clique em **Outro usuário**.
   - No campo usuário, digite: `NEXATECH\Administrador` e a senha do DC.
   - O Windows preparará a área de trabalho do primeiro logon de domínio.
2. **Conferir no CMD do cliente:**
   ```cmd
   whoami
   echo %USERDOMAIN%
   ```
   *Saída esperada:* `nexatech\administrador` e domínio `NEXATECH`.
3. Repita o procedimento para os demais clientes de bancada.
