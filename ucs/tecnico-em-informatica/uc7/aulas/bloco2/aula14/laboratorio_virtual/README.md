# Roteiro Prático Passo a Passo — Aula 14: File Server Avançado (FSRM, Quotas e Shadow Copies)

## 1. Identificação
- **Tema:** File Server Resource Manager (FSRM) e Cópias de Sombra (VSS)
- **Ambiente:** Servidor DC01 (Volume `D: DADOS`)
- **Console:** File Server Resource Manager (`fsrm.msc`)

---

## 2. Objetivos
1. Instalar a role service *File Server Resource Manager*.
2. Criar uma Cota Rígida (Hard Quota) de 500 MB na pasta `D:\Compartilhamento\Financeiro`.
3. Criar uma Triagem de Arquivos (File Screening) bloqueando arquivos multimídia.
4. Habilitar e configurar Cópias de Sombra (VSS) no volume `D:`.
5. Testar a autorrecuperação de arquivos apagados pelo cliente Windows.

---

## 3. Passo a Passo Detalhado

### Parte A — Instalação do FSRM
1. No Server Manager &rarr; **Manage &rarr; Add Roles and Features**.
2. Em *Server Roles*, expanda **File and Storage Services &rarr; File and iSCSI Services**.
3. Marque a caixa: **File Server Resource Manager** &rarr; **Add Features** &rarr; Avance até **Install**.

---

### Parte B — Configurar Cota Rígida (Quota Management)
1. Abra **Server Manager &rarr; Tools &rarr; File Server Resource Manager (`fsrm.msc`)**.
2. Expanda o menu **Quota Management &rarr; Quotas**.
3. Clique com o botão direito em **Quotas** &rarr; **Create Quota...**:
   - **Quota path:** `D:\Compartilhamento\Financeiro`
   - Marque: **Define custom quota properties** &rarr; Clique em **Custom Properties...**.
   - Defina o limite: `500 MB`.
   - Selecione a opção: **Hard Quota (Do not allow users to exceed limit)**.
   - Clique em **OK** &rarr; **Create**.

---

### Parte C — Configurar Triagem de Arquivos (File Screening)
1. No FSRM, expanda **File Screening Management &rarr; File Screens**.
2. Clique com botão direito &rarr; **Create File Screen...**:
   - **File screen path:** `D:\Compartilhamento\Secretaria`
   - Em *File screen properties*, selecione o modelo: **Block Audio and Video Files**.
   - Clique em **Create**.

---

### Parte D — Habilitar Cópias de Sombra (Volume Shadow Copies)
1. No DC01, abra o **Explorador de Arquivos &rarr; Este Computador**.
2. Clique com o botão direito na unidade **D: (DADOS)** &rarr; **Configure Shadow Copies...**.
3. Selecione o volume `D:` e clique no botão **Enable (Habilitar)**.
4. Confirme o aviso com **Yes**.
5. Clique no botão **Create Now** para gerar imediatamente o primeiro ponto de restauração.
6. Clique em **Settings...** e confira o agendamento automático diário (ex: 07:00). Clique em **OK**.

---

## 4. Testes de Validação a partir do Cliente

### Teste 1: Validação do Bloqueio de Extensões
1. No cliente, acesse `\\DC01\Secretaria`.
2. Tente criar ou colar um arquivo com extensão de vídeo ou música (ex: `musica.mp3` ou `video.mp4`).
3. *Resultado esperado:* O Windows exibe a mensagem: **"Você precisa de permissão para executar esta ação" (Acesso Negado)** pelo filtro FSRM.

### Teste 2: Validação da Autorrecuperação de Arquivos (VSS)
1. Acesse `\\DC01\Financeiro` e crie um arquivo chamado `Planilha_Orcamento.txt`.
2. No servidor DC01, clique em **Create Now** nas configurações de Shadow Copy para gravar esse estado.
3. No cliente, **APAGUE** o arquivo `Planilha_Orcamento.txt`.
4. No cliente, clique com o botão direito na pasta `Financeiro` &rarr; **Propriedades**.
5. Abra a aba **Versões Anteriores (Previous Versions)**.
6. Selecione a versão registrada minutos atrás &rarr; Clique em **Abrir (Open)**.
7. Veja o arquivo deletado presente! Copie-o de volta para a pasta de trabalho.
