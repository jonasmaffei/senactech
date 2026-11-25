# Roteiro Prático Passo a Passo — Aula 13: DHCP no Windows Server (Escopos e Autorização)

## 1. Identificação
- **Tema:** Dynamic Host Configuration Protocol (DHCP)
- **Ambiente:** Servidor DC01
- **Console Principal:** DHCP Manager (`dhcpmgmt.msc`)

---

## 2. Objetivos
1. Instalar a função DHCP Server no Windows Server.
2. Autorizar o servidor DHCP no Active Directory.
3. Criar o escopo corporativo da rede `192.168.10.0/24`.
4. Definir exclusões de servidores e opções de Gateway e DNS.
5. Criar uma Reserva de IP por endereço MAC.
6. Validar a concessão automática em um cliente Windows 10.

---

## 3. Passo a Passo Detalhado

### Parte A — Instalação e Autorização da Função DHCP
1. No Server Manager, vá em **Manage &rarr; Add Roles and Features**.
2. Em *Server Roles*, marque **DHCP Server** &rarr; **Add Features** &rarr; Avance até **Install**.
3. Após concluir, clique no triângulo amarelo de notificações &rarr; **Complete DHCP Configuration**.
4. Clique em **Commit** usando a conta `NEXATECH\Administrador` para **Autorizar** o DHCP no Active Directory.

---

### Parte B — Criação do Escopo de IPs
1. Abra **Server Manager &rarr; Tools &rarr; DHCP (`dhcpmgmt.msc`)**.
2. Expanda `DC01.nexatech.local` &rarr; clique com botão direito em **IPv4** &rarr; **New Scope...**.
3. **Name:** `Escopo-NexaTech-LAN` &rarr; **Next**.
4. **Faixa de Endereços (IP Address Range):**
   - **Start IP:** `192.168.10.1`
   - **End IP:** `192.168.10.254`
   - **Subnet mask:** `255.255.255.0` (Length: 24) &rarr; **Next**.
5. **Faixa de Exclusão (Para proteger servidores e roteador):**
   - **Start IP:** `192.168.10.1`
   - **End IP:** `192.168.10.50`
   - Clique em **Add** &rarr; **Next**.
   *(Os clientes receberão apenas IPs do .51 ao .254).*
6. **Lease Duration:** 8 dias &rarr; **Next**.
7. Selecione: *"Yes, I want to configure these options now"* &rarr; **Next**.
8. **Configurar as Opções do Escopo:**
   - **Router (Default Gateway - Opção 003):** Digite `192.168.10.1` &rarr; Clique em **Add** &rarr; **Next**.
   - **Domain Name and DNS Servers (Opção 006):** Verifique se o IP `192.168.10.2` do DC01 está listado.
   - **Domain Name (Opção 015):** `nexatech.local` &rarr; **Next**.
9. Marque *"Yes, I want to activate this scope now"* &rarr; **Next &rarr; Finish**.

---

### Parte C — Criar Reserva de IP por MAC Address
1. No console DHCP, expanda `Scope [192.168.10.0] &rarr; Reservations`.
2. Clique com botão direito &rarr; **New Reservation...**:
   - **Reservation name:** `Diretoria-Notebook`
   - **IP address:** `192.168.10.99`
   - **MAC Address:** Digite o MAC da placa do cliente (obtido via `getmac` no cliente, sem traços).
   - Clique em **Add &rarr; Close**.

---

## 4. Testes no Cliente

1. No cliente Windows 10, abra as propriedades do adaptador de rede (`ncpa.cpl`).
2. Mude o IPv4 de "Usar o seguinte endereço IP" para:
   - **Obter um endereço IP automaticamente**
   - **Obter o endereço dos servidores DNS automaticamente**
3. No CMD do cliente, renove a concessão:
   ```cmd
   ipconfig /release
   ipconfig /renew
   ipconfig /all
   ```
*Saída esperada:* A máquina recebe um IP na faixa livre (ex: `192.168.10.51`), com o Gateway `192.168.10.1` e DNS `192.168.10.2`.
