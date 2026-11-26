# Roteiro Prático Passo a Passo — Aula 09: Instalação do AD DS e Promoção a Controlador de Domínio

## 1. Identificação
- **Tema:** Active Directory Domain Services (AD DS)
- **Ambiente:** Oracle VM VirtualBox
- **VM Utilizada:** `SRV-ARQUIVOS` (renomeada para `DC01`)
- **Domínio a criar:** `nexatech.local`

> Para o passo a passo detalhado de IP (`192.168.10.2`), DNS (`127.0.0.1`), renomeação para `DC01` e instalação da função, consulte [`passo-a-passo-ad-ds.md`](../passo-a-passo-ad-ds.md).

---

## 2. Objetivos
Ao final desta atividade, o estudante será capaz de:
1. Validar pré-requisitos de rede (IP estático e DNS local) no servidor.
2. Instalar a função Active Directory Domain Services via GUI e PowerShell.
3. Promover o servidor a Controlador de Domínio criando uma nova floresta (`nexatech.local`).
4. Configurar a senha de restauração dos serviços de diretório (DSRM).
5. Validar a saúde do domínio e registros SRV no DNS.

---

## 3. Pré-Requisitos e Preparação da VM

1. Inicie a VM do Windows Server (`SRV-ARQUIVOS` / `DC01`).
2. Abra o Prompt de Comando ou PowerShell como Administrador e confira a rede:
   ```powershell
   ipconfig /all
   ```
3. O servidor **DEVE** estar com:
   - **Endereço IPv4:** `192.168.10.2`
   - **Máscara:** `255.255.255.0`
   - **Servidor DNS Primário:** `127.0.0.1` (loopback) ou o próprio IP do servidor.

---

## 4. Passo a Passo Detalhado (Interface Gráfica)

### Parte A — Instalação da Função AD DS
1. Abra o **Server Manager** (Gerenciador do Servidor).
2. No painel superior, clique em **Manage (Gerenciar) → Add Roles and Features (Adicionar Funções e Recursos)**.
3. Clique em **Next (Avançar)** na tela inicial (*Before you begin*).
4. Selecione **Role-based or feature-based installation** e clique em **Next**.
5. Em *Server Selection*, confirme o servidor local e clique em **Next**.
6. Na lista de *Server Roles (Funções)*:
   - Marque a caixa **Active Directory Domain Services**.
   - Na janela pop-up que abrir, clique em **Add Features (Adicionar Recursos)** para incluir as ferramentas de gerenciamento.
7. Clique em **Next**, **Next**, **Next** até a tela de confirmação.
8. Marque a opção *Restart the destination server automatically if required* (opcional) e clique em **Install (Instalar)**.
9. Aguarde a barra de progresso atingir 100%. **NÃO FECHE AINDA!**

---

### Parte B — Promoção a Controlador de Domínio (AD DS Configuration Wizard)
1. No Server Manager, clique no ícone da **Bandeira de Notificações (Triângulo amarelo)** no canto superior direito.
2. Clique no link azul: **Promote this server to a domain controller (Promover este servidor a controlador de domínio)**.
3. Na tela **Deployment Configuration**:
   - Selecione a 3ª opção: **Add a new forest (Adicionar uma nova floresta)**.
   - No campo **Root domain name (Nome do domínio raiz)**, digite exatamente:
     ```text
     nexatech.local
     ```
   - Clique em **Next**.
4. Na tela **Domain Controller Options**:
   - Mantenha o nível funcional da Floresta e do Domínio em *Windows Server 2016* (ou a versão mais alta disponível).
   - Confirme que **Domain Name System (DNS) server** e **Global Catalog (GC)** estão marcados.
   - Digite uma senha para o **DSRM (Directory Services Restore Mode)**, por exemplo: `Senha@123` (guarde esta senha).
   - Clique em **Next**.
5. Na tela **DNS Options**:
   - O aviso *"A delegation for this DNS server cannot be created..."* é normal para uma floresta nova raiz. Clique em **Next**.
6. Na tela **Additional Options**:
   - O nome NetBIOS do domínio será gerado automaticamente como `NEXATECH`. Clique em **Next**.
7. Na tela **Paths**:
   - Mantenha os caminhos padrão do banco de dados (pasta `NTDS` e `SYSVOL`). Clique em **Next**.
8. Na tela **Review Options**:
   - Revise o resumo e clique em **Next**.
9. Na tela **Prerequisites Check**:
   - O assistente fará a checagem. Ao aparecer o símbolo verde *"All prerequisite checks passed successfully"*, clique em **Install**.
10. O servidor instalará os serviços e reiniciará automaticamente.

---

## 5. Passo a Passo Alternativo via PowerShell (1 Comando)

Se preferir fazer todo o processo via linha de comando:
```powershell
# 1. Instalar a feature do AD DS
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# 2. Promover e criar a floresta nexatech.local (solicitará a senha DSRM)
Install-ADDSForest -DomainName "nexatech.local" -InstallDns:$true -Force
```

---

## 6. Primeiro Logon no Domínio

1. Após reiniciar, a tela de login mudará:
   - O campo de usuário exibirá: `NEXATECH\Administrator` (ou `NEXATECH\Administrador`).
2. Digite a senha da conta de Administrador.
3. No Server Manager, observe que agora aparecem os módulos **AD DS** e **DNS** no menu lateral esquerdo.

---

## 7. Testes e Validação da Saúde do Domínio

Abra o PowerShell como Administrador e execute os comandos de diagnóstico:

1. **Testar se o DC está respondendo consultas no domínio:**
   ```powershell
   nltest /dsgetdc:nexatech.local
   ```
   *Saída esperada:* Exibe o nome do DC, endereço IP e flags indicando `[DS] [GC] [KDC] [TIMESERV]`.

2. **Diagnóstico completo de integridade do AD (DCDiag):**
   ```powershell
   dcdiag /test:dns
   ```
   *Saída esperada:* Todos os testes com status `Passed`.

3. **Verificar a identidade da máquina:**
   ```powershell
   whoami
   ```
   *Saída esperada:* `nexatech\administrador`

---

## 8. Critério de Aceite (Evidências para o Professor)

Tirar print das 3 telas comprobatórias:
1. Janela do **Active Directory Administrative Center** ou **Active Directory Users and Computers (`dsa.msc`)** aberta exibindo o domínio `nexatech.local`.
2. Saída do comando `nltest /dsgetdc:nexatech.local`.
3. Foto ou print de um Snapshot nomeado: `Snapshot_Aula09_ADDS_Promovido`.
