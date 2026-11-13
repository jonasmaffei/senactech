#!/usr/bin/env bash
# Instala e configura o MariaDB no DB01 para a aplicacao de teste da UC7.
# Execute como root no DB01.

set -Eeuo pipefail

if [[ "${EUID}" -ne 0 ]]; then
    echo "Execute como root (sudo)." >&2
    exit 1
fi

DB_NAME="${DB_NAME:-nexatech_app}"
DB_USER="${DB_USER:-app_nexatech}"
APP_HOST="${APP_HOST:-192.168.10.20}"
DB_BIND_IP="${DB_BIND_IP:-192.168.10.30}"
DB_PASSWORD="${DB_PASSWORD:-}"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="$(cd -- "${SCRIPT_DIR}/.." && pwd)"

if [[ -z "${DB_PASSWORD}" ]]; then
    DB_PASSWORD="$(openssl rand -hex 16)"
fi

if [[ ! "${DB_PASSWORD}" =~ ^[A-Za-z0-9]+$ ]]; then
    echo "Use uma senha apenas com letras e numeros." >&2
    exit 1
fi

export DEBIAN_FRONTEND=noninteractive

echo "[1/7] Instalando MariaDB..."
apt-get update
apt-get install -y mariadb-server mariadb-client openssl ufw

echo "[2/7] Habilitando o servico..."
systemctl enable --now mariadb

echo "[3/7] Configurando bind-address=${DB_BIND_IP}..."
MARIADB_CONF="/etc/mysql/mariadb.conf.d/50-server.cnf"
if [[ -f "${MARIADB_CONF}" ]]; then
    sed -i -E "s/^[#[:space:]]*bind-address[[:space:]]*=.*/bind-address = ${DB_BIND_IP}/" "${MARIADB_CONF}"
    systemctl restart mariadb
fi

echo "[4/7] Criando banco, usuario e permissoes..."
mysql --protocol=socket -uroot <<SQL
CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS '${DB_USER}'@'${APP_HOST}' IDENTIFIED BY '${DB_PASSWORD}';
ALTER USER '${DB_USER}'@'${APP_HOST}' IDENTIFIED BY '${DB_PASSWORD}';
GRANT SELECT, INSERT, UPDATE, DELETE ON \`${DB_NAME}\`.* TO '${DB_USER}'@'${APP_HOST}';
FLUSH PRIVILEGES;
SQL

echo "[5/7] Criando tabela e dados de exemplo..."
mysql --protocol=socket -uroot "${DB_NAME}" < "${APP_DIR}/db/schema.sql"
mysql --protocol=socket -uroot "${DB_NAME}" < "${APP_DIR}/db/seed.sql"

echo "[6/7] Ajustando o firewall..."
if ufw status 2>/dev/null | grep -q "Status: active"; then
    ufw allow from "${APP_HOST}" to any port 3306 proto tcp
else
    echo "ufw inativo; nenhuma regra adicional foi criada."
fi

echo "[7/7] Validando a configuracao..."
mysql --protocol=socket -uroot -e "SELECT User, Host FROM mysql.user WHERE User='${DB_USER}';"
mysql --protocol=socket -uroot -e "SHOW GRANTS FOR '${DB_USER}'@'${APP_HOST}';"
mysql --protocol=socket -uroot -e "SELECT COUNT(*) AS chamados FROM chamados;" "${DB_NAME}"

install -d -m 700 /root
cat > /root/nexatech-db-credentials.txt <<EOF
DB_HOST=${DB_BIND_IP}
DB_PORT=3306
DB_NAME=${DB_NAME}
DB_USER=${DB_USER}
DB_PASS=${DB_PASSWORD}
APP_HOST=${APP_HOST}
EOF
chmod 600 /root/nexatech-db-credentials.txt

cat <<EOF

Banco de dados configurado com sucesso.
Credenciais salvas em: /root/nexatech-db-credentials.txt

Proximo passo (no APP01):
  sudo DB_PASS='${DB_PASSWORD}' ./scripts/deploy-app.sh

Ou copie a senha do arquivo acima e rode o deploy no APP01.
EOF
