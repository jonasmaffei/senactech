#!/usr/bin/env bash
# Valida Apache/PHP, a conexao com o MariaDB e o endpoint health.php no APP01.
# Execute como root no APP01.

set -Eeuo pipefail

APP_URL="${APP_URL:-http://127.0.0.1}"
SERVER_NAME="${SERVER_NAME:-app.nexatech.local}"
APP_ENV_FILE="${APP_ENV_FILE:-/etc/nexatech/app.env}"

failures=0

pass() { echo "OK   - $1"; }
fail() { echo "FALHA - $1"; failures=$((failures + 1)); }

echo "== Validacao da aplicacao NexaTech =="

if systemctl is-active --quiet apache2; then pass "Apache ativo"; else fail "Apache ativo"; fi
if php -v >/dev/null 2>&1; then pass "PHP CLI disponivel"; else fail "PHP CLI disponivel"; fi
if php -m 2>/dev/null | grep -qi '^pdo_mysql$'; then pass "Modulo pdo_mysql carregado"; else fail "Modulo pdo_mysql carregado"; fi
if [[ -r "${APP_ENV_FILE}" ]]; then pass "Arquivo de credenciais existe"; else fail "Arquivo de credenciais existe"; fi

health="$(curl -fsS -H "Host: ${SERVER_NAME}" "${APP_URL}/health.php" 2>/dev/null || true)"
if [[ -n "${health}" ]]; then
    echo "${health}"
    if echo "${health}" | grep -q '"status": "ok"'; then
        pass "health.php respondeu status ok"
    else
        fail "health.php respondeu status ok"
    fi
else
    fail "health.php respondeu"
fi

if [[ -r "${APP_ENV_FILE}" ]]; then
    # As variaveis sao simples (sem espacos), gravadas pelo deploy.
    set -a
    # shellcheck disable=SC1090
    . "${APP_ENV_FILE}"
    set +a

    if command -v mysql >/dev/null 2>&1; then
        if mysql -h "${DB_HOST}" -u "${DB_USER}" -p"${DB_PASS}" -e "SELECT 1" "${DB_NAME}" >/dev/null 2>&1; then
            pass "Conexao direta com o banco (${DB_USER}@${DB_HOST})"
        else
            fail "Conexao direta com o banco (${DB_USER}@${DB_HOST})"
        fi
    else
        echo "AVISO - cliente mysql nao encontrado; o teste foi feito via health.php."
    fi
fi

if [[ "${failures}" -eq 0 ]]; then
    echo "== Resultado: OK =="
    exit 0
fi

echo "== Resultado: ${failures} falha(s) =="
exit 1
