# Roteiro Prático Passo a Passo — Aula 27: Banco de Dados MariaDB e Conexão com o PHP

## 1. Identificação
- **Tema:** Banco de Dados Relacional Corporativo (MariaDB/MySQL)
- **Servidores:** `DB01` (Banco de Dados em `192.168.10.30`) e `APP01` (Web em `192.168.10.20`)

## 2. Objetivos
1. Instalar e configurar o SGBD MariaDB no servidor `DB01`.
2. Liberar o bind address para conexões de rede seguras.
3. Criar a base de dados `nexatech_db` e o usuário `app_user` restrito ao IP do `APP01`.
4. Criar um script PHP no `APP01` que consulta e grava dados no `DB01`.

## 3. Passo a Passo Detalhado

### Parte A — Instalação e Hardening do MariaDB no DB01
1. No terminal do `DB01`:
   ```bash
   sudo apt update && sudo apt install -y mariadb-server
   sudo mysql_secure_installation
   ```
   - Responda `Y` para todas as perguntas de segurança (remover usuários anônimos, desabilitar root remoto e remover banco de teste).
2. Configurar o MariaDB para escutar na interface de rede local:
   ```bash
   sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf
   ```
   - Localize a linha `bind-address` e altere para:
     ```text
     bind-address = 0.0.0.0
     ```
3. Reinicie o serviço:
   ```bash
   sudo systemctl restart mariadb
   ```

### Parte B — Criação do Banco e Permissões Restritas
Acesse o console SQL no `DB01`:
```bash
sudo mysql -u root -p
```
Execute os comandos SQL:
```sql
CREATE DATABASE nexatech_db;

-- Criar usuário com permissão EXCLUSIVA vindo do IP do APP01 (192.168.10.20):
CREATE USER 'app_user'@'192.168.10.20' IDENTIFIED BY 'BancoSenha@123';
GRANT ALL PRIVILEGES ON nexatech_db.* TO 'app_user'@'192.168.10.20';
FLUSH PRIVILEGES;

-- Criar tabela de teste:
USE nexatech_db;
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL
);

INSERT INTO funcionarios (nome, cargo) VALUES ('João Silva', 'Analista Financeiro'), ('Maria Souza', 'Gerente');
EXIT;
```

### Parte C — Teste de Integração a partir do APP01
No servidor `APP01`, crie o arquivo de teste `dados.php`:
```bash
sudo nano /var/www/nexatech/public/dados.php
```
Insira:
```php
<?php
$conn = new mysqli("192.168.10.30", "app_user", "BancoSenha@123", "nexatech_db");
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}
echo "<h2>Conexão com o Banco DB01 realizada com Sucesso!</h2>";
$res = $conn->query("SELECT * FROM funcionarios");
while($row = $res->fetch_assoc()) {
    echo "<p>ID: " . $row["id"] . " | Nome: " . $row["nome"] . " | Cargo: " . $row["cargo"] . "</p>";
}
?>
```
Acesse pelo navegador no cliente: `http://app.nexatech.local/dados.php`.
