# Roteiro Prático Passo a Passo — Aula 20: Instalação do Ubuntu Server 24.04 e Netplan

## 1. Identificação
- **Tema:** Instalação de Servidor Linux sem GUI e Configuração de Rede Estática
- **VM:** `APP01` (Ubuntu Server 24.04 LTS)
- **Arquivo de Configuração:** `/etc/netplan/50-cloud-init.yaml`

## 2. Objetivos
1. Criar e instalar a VM do Ubuntu Server 24.04 sem interface gráfica.
2. Definir usuário administrativo `administrador` com permissões `sudo`.
3. Configurar endereço IPv4 estático (`192.168.10.20/24`), gateway e DNS via Netplan.
4. Validar conectividade interna com o DC01 e externa com o pfSense.

## 3. Passo a Passo Detalhado

### Parte A — Instalação do Ubuntu Server
1. Inicie a VM com a ISO do Ubuntu Server 24.04 LTS.
2. Escolha o idioma (Inglês recomendado para servidores corporativos) e teclado `Portuguese (Brazil)`.
3. Selecione o tipo de instalação: **Ubuntu Server (minimized)** para menor consumo de recursos.
4. Na tela de rede, ignore o DHCP temporário (configuraremos o Netplan estático).
5. Particionamento: use o disco inteiro com LVM habilitado.
6. Configuração de perfil:
   - **Your name:** Administrador
   - **Your server's name:** `app01`
   - **Pick a username:** `administrador`
   - **Password:** `Senha@123`
7. Marque a caixa: **Install OpenSSH server** (indispensável para aulas futuras).
8. Conclua a instalação e reinicie a VM.

### Parte B — Configuração de Rede com Netplan
1. Faça login no terminal do Ubuntu Server.
2. Abra o arquivo de configuração do Netplan com o editor Nano:
   ```bash
   sudo nano /etc/netplan/50-cloud-init.yaml
   ```
3. Edite o arquivo deixando exatamente com esta estrutura (respeitando a indentação de 2 espaços do YAML):
   ```yaml
   network:
     version: 2
     ethernets:
       enp0s3:
         dhcp4: no
         addresses:
           - 192.168.10.20/24
         routes:
           - to: default
             via: 192.168.10.1
         nameservers:
           addresses: [192.168.10.2, 1.1.1.1]
   ```
4. Salve pressionando `Ctrl + O`, Enter e saia com `Ctrl + X`.
5. Aplique as configurações de rede:
   ```bash
   sudo netplan apply
   ```
6. Confira a placa e teste conectividade:
   ```bash
   ip addr show enp0s3
   ping -c 3 192.168.10.2
   ```
