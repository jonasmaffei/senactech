# Roteiro Prático Passo a Passo — Aula 12: DNS no Windows Server (Zonas e Registros)

## 1. Identificação
- **Tema:** Resolução de Nomes e Encaminhadores DNS
- **Ambiente:** Servidor DC01 (`192.168.10.2`)
- **Console Principal:** DNS Manager (`dnsmgmt.msc`)

---

## 2. Objetivos
1. Criar e gerenciar a Zona de Pesquisa Reversa para a sub-rede `192.168.10.0/24`.
2. Criar registros do tipo A, CNAME (Alias) e PTR no domínio `nexatech.local`.
3. Configurar os Encaminhadores de DNS (Forwarders) para resolução de sites da Internet.
4. Validar as resoluções de nomes no cliente utilizando `nslookup`.

---

## 3. Passo a Passo Detalhado (No Servidor DC01)

### Parte A — Criar a Zona de Pesquisa Reversa
1. Abra o **Server Manager → Tools → DNS (`dnsmgmt.msc`)**.
2. Expanda o servidor `DC01` no painel esquerdo.
3. Clique com o botão direito em **Reverse Lookup Zones (Zonas de Pesquisa Inversa)** &rarr; **New Zone...**.
4. Clique em **Next**.
5. Mantenha **Primary zone** e marque *Store the zone in Active Directory* &rarr; **Next**.
6. Selecione a opção padrão: *"To all DNS servers running on domain controllers in this domain"* &rarr; **Next**.
7. Selecione **IPv4 Reverse Lookup Zone** &rarr; **Next**.
8. No campo **Network ID**, digite os 3 primeiros octetos da rede:
   ```text
   192.168.10
   ```
   *(A zona será nomeada automaticamente como `10.168.192.in-addr.arpa`)* &rarr; **Next**.
9. Em *Dynamic Update*, mantenha: *"Allow only secure dynamic updates"* &rarr; **Next &rarr; Finish**.

---

### Parte B — Criar Registros A e CNAME
1. Expanda **Forward Lookup Zones (Zonas de Pesquisa Direta) &rarr; `nexatech.local`**.
2. **Criar Registro A para o futuro servidor Web/App:**
   - Clique com o botão direito na área em branco da zona &rarr; **New Host (A or AAAA)...**.
   - **Name:** `app`
   - **IP address:** `192.168.10.20`
   - Marque a caixa: **Create associated pointer (PTR) record**.
   - Clique em **Add Host**.
3. **Criar Registro CNAME (Apelido/Alias):**
   - Clique com o botão direito na área em branco &rarr; **New Alias (CNAME)...**.
   - **Alias name:** `portal`
   - No campo FQDN de destino, clique em **Browse...** e selecione o host `app.nexatech.local`.
   - Clique em **OK**.

---

### Parte C — Configurar Encaminhadores de DNS (Forwarders)
1. No console DNS, clique com o botão direito no nome do servidor (**DC01**) &rarr; **Properties**.
2. Vá até a aba **Forwarders (Encaminhadores)** &rarr; Clique em **Edit...**.
3. Adicione os endereços de servidores DNS de saída:
   - `1.1.1.1` (Cloudflare)
   - `8.8.8.8` (Google)
4. Clique em **OK** e **Apply**.

---

## 4. Testes no Cliente (CMD / PowerShell)

No cliente Windows (`CLI-FIN`), teste a resolução direta, reversa e do alias:

```cmd
# 1. Testar resolução direta:
nslookup app.nexatech.local

# 2. Testar resolução do CNAME:
nslookup portal.nexatech.local

# 3. Testar resolução reversa (IP -> Nome):
nslookup 192.168.10.20
```
*Saída esperada:* Todos os comandos devem responder apontando corretamente para o servidor `192.168.10.20` com o nome associado.
