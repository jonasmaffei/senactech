# Roteiro Prático Passo a Passo — Aula 17: Instalação e Configuração do pfSense

## 1. Identificação
- **Tema:** Firewall e Roteador de Borda com pfSense (FreeBSD)
- **VM Utilizada:** `FW01-PFSENSE`
- **Interfaces:** WAN (Placa em Modo NAT) e LAN (Rede Interna `rede-nexatech`)

## 2. Objetivos
1. Criar a VM do pfSense no VirtualBox com 2 adaptadores de rede.
2. Realizar a instalação guiada no disco virtual.
3. Atribuir interfaces WAN e LAN no console textual do pfSense.
4. Definir o IP estático da LAN como `192.168.10.1/24`.
5. Acessar a interface web de administração a partir de um cliente Windows.

## 3. Passo a Passo Detalhado

### Parte A — Criação e Configuração da VM no VirtualBox
1. Abra o VirtualBox e clique em **Novo**:
   - **Nome:** `FW01-PFSENSE`
   - **Tipo:** BSD | **Versão:** FreeBSD (64-bit)
   - **Memória RAM:** 1024 MB (1 GB)
   - **Disco:** 20 GB (Dinamicamente alocado)
2. Antes de ligar, entre em **Configurações &rarr; Rede**:
   - **Adaptador 1:** Habilitado &rarr; Conectado a: **NAT** (Esta será a WAN / Internet).
   - **Adaptador 2:** Habilitado &rarr; Conectado a: **Rede Interna** &rarr; Nome: `rede-nexatech` (Esta será a LAN).
3. Em **Armazenamento**, anexe a ISO do pfSense na controladora IDE/SATA.

### Parte B — Instalação do pfSense
1. Inicie a VM do pfSense.
2. Pressione Enter para aceitar o Copyright.
3. Selecione: **Install pfSense** &rarr; Pressione Enter.
4. Mantenha o mapa de teclado padrão (Keymap) &rarr; **Continue with default keymap**.
5. Em particionamento, selecione: **Auto (ZFS)** ou **Auto (UFS)** &rarr; Pressione Enter.
6. Prossiga com a instalação e, ao final, selecione **No** para abrir o shell manual.
7. Selecione **Reboot**. Remova a ISO para não iniciar a instalação novamente.

### Parte C — Configuração das Interfaces no Console (Menu 1 e 2)
1. Ao carregar o menu textual:
   - *Should VLANs be set up now [y|n]?* Digite: `n` e Enter.
   - *Enter the WAN interface name:* Digite `vtnet0` (ou `em0`) e Enter.
   - *Enter the LAN interface name:* Digite `vtnet1` (ou `em1`) e Enter.
   - Pressione Enter para confirmar.
2. No menu de opções (1 a 16):
   - Digite a opção **2 (Set interface(s) IP address)** e Enter.
   - Selecione a interface **2 (LAN)**.
   - *Enter the new LAN IPv4 address:* Digite: `192.168.10.1`
   - *Enter the new LAN IPv4 subnet bit count:* Digite: `24`
   - Para o gateway IPv4 da LAN, pressione Enter (nenhum).
   - Para IPv6, pressione Enter (nenhum).
   - *Do you want to enable the DHCP server on LAN [y|n]?* Digite: `n` (Já temos DHCP no Windows Server/Linux).
   - *Do you want to revert to HTTP as the webConfigurator protocol [y|n]?* Digite: `y`.
3. O console exibirá: `LAN -> 192.168.10.1`.

### Parte D — Primeiro Acesso Web (Pelo Cliente Windows)
1. Ligue a VM cliente `CLI-FIN` conectada na `rede-nexatech`.
2. Abra o navegador (Edge ou Chrome) e acesse:
   ```text
   http://192.168.10.1
   ```
3. Credenciais padrão de fábrica:
   - **Username:** `admin`
   - **Password:** `pfsense`
4. Siga o assistente inicial definindo o Hostname `fw01` e domínio `nexatech.local`.
