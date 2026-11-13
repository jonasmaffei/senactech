#!/usr/bin/env bash
# Instala Apache/PHP e publica a aplicacao de teste no APP01.
# Execute como root no APP01.

set -Eeuo pipefail

if [[ "${EUID}" -ne 0 ]]; then
    echo "Execute como root (sudo)." >&2
    exit 1
fi

DB_HOST="${DB_HOST:-192.168.10.30}"
DB_PORT="${DB_PORT:-3306}"
DB_NAME="${DB_NAME:-nexatech_app}"
DB_USER="${DB_USER:-app_nexatech}"
DB_PASS="${DB_PASS:-}"
SERVER_NAME="${SERVER_NAME:-app.nexatech.local}"
APP_ROOT="${APP_ROOT:-/var/www/nexatech}"
APP_ENV_FILE="${APP_ENV_FILE:-/etc/nexatech/app.env}"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
APP_SRC="$(cd -- "${SCRIPT_DIR}/../app" && pwd)"

if [[ -z "${DB_PASS}" ]]; then
    if [[ -t 0 ]]; then
        read -rsp "Senha do usuario ${DB_USER}: " DB_PASS
        echo
    else
        echo "Defina DB_PASS ou execute de forma interativa." >&2
        exit 1
    fi
fi

if [[ ! "${DB_PASS}" =~ ^[A-Za-z0-9]+$ ]]; then
    echo "Use uma senha apenas com letras e numeros." >&2
    exit 1
fi

export DEBIAN_FRONTEND=noninteractive

echo "[1/8] Instalando Apache, PHP e cliente do MariaDB..."
apt-get update
apt-get install -y apache2 php libapache2-mod-php php-mysql mariadb-client curl

PHP_VERSION="$(php -r 'echo PHP_MAJOR_VERSION . "." . PHP_MINOR_VERSION;')"
PHP_CONF_DIR="/etc/php/${PHP_VERSION}/apache2/conf.d"

echo "[2/8] Configurando o PHP (${PHP_VERSION})..."
install -d -m 755 "${PHP_CONF_DIR}" /var/log/php
cat > "${PHP_CONF_DIR}/99-nexatech.ini" <<'INI'
expose_php = Off
display_errors = Off
log_errors = On
error_log = /var/log/php/nexatech-error.log
date.timezone = America/Sao_Paulo
memory_limit = 128M
upload_max_filesize = 8M
post_max_size = 8M
INI
chown -R www-data:www-data /var/log/php

echo "[3/8] Gravando as credenciais em ${APP_ENV_FILE}..."
install -d -m 750 "$(dirname -- "${APP_ENV_FILE}")"
cat > "${APP_ENV_FILE}" <<EOF
DB_HOST=${DB_HOST}
DB_PORT=${DB_PORT}
DB_NAME=${DB_NAME}
DB_USER=${DB_USER}
DB_PASS=${DB_PASS}
EOF
chown root:www-data "${APP_ENV_FILE}"
chmod 640 "${APP_ENV_FILE}"

echo "[4/8] Copiando a aplicacao para ${APP_ROOT}..."
install -d -m 755 "${APP_ROOT}"
cp -a "${APP_SRC}/." "${APP_ROOT}/"
chown -R www-data:www-data "${APP_ROOT}"
find "${APP_ROOT}" -type d -exec chmod 755 {} \;
find "${APP_ROOT}" -type f -exec chmod 644 {} \;

echo "[5/8] Criando o VirtualHost do Apache..."
cat > /etc/apache2/sites-available/nexatech.conf <<EOF
<VirtualHost *:80>
    ServerName ${SERVER_NAME}
    DocumentRoot ${APP_ROOT}

    <Directory ${APP_ROOT}>
        Options -Indexes +FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/nexatech-error.log
    CustomLog \${APACHE_LOG_DIR}/nexatech-access.log combined
</VirtualHost>
EOF

echo "[6/8] Habilitando o site e reiniciando o Apache..."
a2enmod headers >/dev/null
a2ensite nexatech >/dev/null
a2dissite 000-default >/dev/null 2>&1 || true
apache2ctl configtest
systemctl enable --now apache2
systemctl restart apache2

echo "[7/8] Testando o PHP e o Apache..."
php -m | grep -qi 'pdo_mysql' && echo "OK: modulo pdo_mysql carregado."
curl -fsS -H "Host: ${SERVER_NAME}" "http://127.0.0.1/health.php" > /tmp/nexatech-health.json || true
cat /tmp/nexatech-health.json 2>/dev/null || true
echo

echo "[8/8] Testando a conexao com o banco..."
if curl -fsS -H "Host: ${SERVER_NAME}" "http://127.0.0.1/health.php" | grep -q '"status": "ok"'; then
    echo "OK: aplicacao conectada ao banco."
else
    echo "AVISO: banco ainda indisponivel. Rode install-db.sh no DB01 e depois test-connection.sh."
fi

cat <<EOF

Deploy concluido.
Acesse no navegador do cliente:
  http://${SERVER_NAME}
  http://192.168.10.20/

Adicione no arquivo hosts dos clientes (Windows):
  192.168.10.20  ${SERVER_NAME}

Credenciais do banco: ${APP_ENV_FILE} (root:www-data, 640)
Logs do PHP: /var/log/php/nexatech-error.log
Logs do Apache: /var/log/apache2/nexatech-error.log
EOF
