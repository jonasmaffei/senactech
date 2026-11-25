# Roteiro Prático Passo a Passo — Aula 26: Servidor Web Apache2, PHP e Virtual Hosts

## 1. Identificação
- **Tema:** Servidor Web LAMP (Apache + PHP)
- **Servidor:** `APP01` (`192.168.10.20`)
- **Caminho da Aplicação:** `/var/www/nexatech/`

## 2. Objetivos
1. Instalar o servidor web Apache2 e o interpretador PHP no Ubuntu Server.
2. Criar a estrutura de diretórios da aplicação corporativa.
3. Criar e habilitar o Virtual Host `app.nexatech.local`.
4. Testar o acesso via navegador a partir dos clientes Windows.

## 3. Passo a Passo Detalhado

### Parte A — Instalação dos Pacotes
No terminal do `APP01`, execute:
```bash
sudo apt update
sudo apt install -y apache2 php libapache2-mod-php php-mysql
```

### Parte B — Criação da Pasta e Página PHP
1. Crie o diretório raiz da aplicação:
   ```bash
   sudo mkdir -p /var/www/nexatech/public
   ```
2. Defina o dono do diretório para o usuário do Apache:
   ```bash
   sudo chown -R www-data:www-data /var/www/nexatech
   sudo chmod -R 755 /var/www/nexatech
   ```
3. Crie um arquivo de teste `index.php`:
   ```bash
   sudo nano /var/www/nexatech/public/index.php
   ```
4. Insira o seguinte código:
   ```php
   <?php
   echo "<h1>Portal NexaTech - Servidor Web Operacional</h1>";
   echo "<p>Hospedado no servidor: " . gethostname() . "</p>";
   echo "<p>Data e Hora do Servidor: " . date("d/m/Y H:i:s") . "</p>";
   ?>
   ```
   Salve e feche o arquivo.

### Parte C — Criação do Virtual Host no Apache
1. Crie o arquivo de configuração do site:
   ```bash
   sudo nano /etc/apache2/sites-available/nexatech.conf
   ```
2. Insira a configuração:
   ```apache
   <VirtualHost *:80>
       ServerName app.nexatech.local
       ServerAlias portal.nexatech.local
       DocumentRoot /var/www/nexatech/public
       ErrorLog ${APACHE_LOG_DIR}/nexatech_error.log
       CustomLog ${APACHE_LOG_DIR}/nexatech_access.log combined
   </VirtualHost>
   ```
3. Habilite o site e o módulo de reescrita:
   ```bash
   sudo a2ensite nexatech.conf
   sudo a2dissite 000-default.conf
   sudo systemctl reload apache2
   ```

### Parte D — Teste no Cliente Windows
No cliente `CLI-FIN`, abra o navegador e acesse:
```text
http://app.nexatech.local
```
*Resultado esperado:* A página PHP carrega perfeitamente com a identificação do servidor `app01`!
