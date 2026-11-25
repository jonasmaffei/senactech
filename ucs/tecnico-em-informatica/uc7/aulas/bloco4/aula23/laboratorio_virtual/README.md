# Roteiro Prático Passo a Passo — Aula 23: Hardening de SSH e Acesso por Chaves

## 1. Identificação
- **Tema:** Acesso Remoto Seguro com Criptografia Assimétrica (Ed25519)
- **Servidor:** `APP01` (`192.168.10.20`)
- **Arquivo de Configuração:** `/etc/ssh/sshd_config`

## 2. Objetivos
1. Gerar um par de chaves SSH assimétricas na máquina cliente.
2. Copiar a chave pública para o servidor Linux.
3. Desabilitar login de root e login por senha no daemon SSH.
4. Testar o login instantâneo sem digitação de senha e comprovar a imunidade a ataques de força bruta.

## 3. Passo a Passo Detalhado

### Parte A — Geração da Chave no Cliente (Windows / PowerShell)
1. No cliente Windows, abra o PowerShell e execute:
   ```powershell
   ssh-keygen -t ed25519 -C "admin@nexatech.local"
   ```
2. Pressione Enter para aceitar o local padrão (`C:\Users\aluno\.ssh\id_ed25519`).
3. (Opcional) Digite uma passphrase para proteger a chave.
4. Envie a chave pública para o servidor Ubuntu:
   ```powershell
   type $env:USERPROFILE\.ssh\id_ed25519.pub | ssh administrador@192.168.10.20 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"
   ```

### Parte B — Blindagem do Arquivo <code>sshd_config</code> (No Servidor Linux)
1. No terminal do `APP01`, abra o arquivo de configuração:
   ```bash
   sudo nano /etc/ssh/sshd_config
   ```
2. Localize e altere as seguintes diretivas:
   ```text
   PermitRootLogin no
   PasswordAuthentication no
   PubkeyAuthentication yes
   ```
3. Salve com `Ctrl + O` e saia com `Ctrl + X`.
4. Teste a sintaxe do arquivo antes de reiniciar o serviço:
   ```bash
   sudo sshd -t
   ```
5. Se não retornar erros, reinicie o SSH:
   ```bash
   sudo systemctl restart ssh
   ```

### Parte C — Teste de Acesso
No cliente Windows, conecte-se com:
```powershell
ssh administrador@192.168.10.20
```
*Resultado esperado:* O terminal abre diretamente autenticado pela chave criptográfica, sem pedir senha!
