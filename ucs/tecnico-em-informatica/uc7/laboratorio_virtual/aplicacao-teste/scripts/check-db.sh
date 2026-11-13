#!/usr/bin/env bash
# Valida a instalacao do MariaDB, o banco, o usuario e as permissoes no DB01.
# Execute como root no DB01.

set -Eeuo pipefail

if [[ "${EUID}" -ne 0 ]]; then
    echo "Execute como root (sudo)." >&2
    exit 1
fi

DB_NAME="${DB_NAME:-nexatech_app}"
DB_USER="${DB_USER:-app_nexatech}"
APP_HOST="${APP_HOST:-192.168.10.20}"

failures=0

pass() { echo "OK   - $1"; }
fail() { echo "FALHA - $1"; failures=$((failures + 1)); }

echo "== Validacao do banco de dados NexaTech =="

if systemctl is-active --quiet mariadb; then pass "Servico MariaDB ativo"; else fail "Servico MariaDB ativo"; fi

if mysql --protocol=socket -uroot -e "USE \`${DB_NAME}\`;" >/dev/null 2>&1; then
    pass "Banco ${DB_NAME} existe"
else
    fail "Banco ${DB_NAME} existe"
fi

if mysql --protocol=socket -uroot -N -e "SELECT 1 FROM mysql.user WHERE User='${DB_USER}' AND Host='${APP_HOST}'" 2>/dev/null | grep -q '^1$'; then
    pass "Usuario ${DB_USER}@${APP_HOST} existe"
else
    fail "Usuario ${DB_USER}@${APP_HOST} existe"
fi

echo "Permissoes atuais:"
mysql --protocol=socket -uroot -e "SHOW GRANTS FOR '${DB_USER}'@'${APP_HOST}';" || failures=$((failures + 1))

echo "Tabela chamados:"
if mysql --protocol=socket -uroot -e "SELECT COUNT(*) AS chamados FROM chamados;" "${DB_NAME}"; then
    pass "Consulta na tabela chamados"
else
    fail "Consulta na tabela chamados"
fi

if [[ "${failures}" -eq 0 ]]; then
    echo "== Resultado: OK =="
    exit 0
fi

echo "== Resultado: ${failures} falha(s) =="
exit 1
