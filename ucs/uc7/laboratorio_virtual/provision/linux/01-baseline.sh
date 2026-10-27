#!/usr/bin/env bash
# ============================================================
# UC7 - Linux Server - Configuracao inicial (LNX01 e MON01)
# ============================================================
# Uso: 01-baseline.sh <hostname>
# Exemplo: 01-baseline.sh lnx01
#
# O script prepara a base do servidor Linux:
#   - hostname
#   - fuso horario
#   - DNS do dominio no adaptador interno
#   - pacotes basicos de diagnostico e administracao
#
# Os servicos de rede (BIND, DHCP, web, Samba, etc.) sao
# configurados pelo aluno nas aulas correspondentes.
# ============================================================

set -euo pipefail

HOSTNAME="${1:-lnx01}"

if [[ $EUID -ne 0 ]]; then
  echo "Execute como root (o provisioner do Vagrant ja faz isso)." >&2
  exit 1
fi

echo "==> Linux: configurando ${HOSTNAME}"

# Hostname e fuso horario
hostnamectl set-hostname "${HOSTNAME}"
timedatectl set-timezone America/Sao_Paulo

# Identifica o adaptador NAT (10.0.2.x) e o adaptador interno
NAT_IFACE="$(ip -4 -o addr show 2>/dev/null | awk '$4 ~ /^10\.0\.2\./ {print $2; exit}' || true)"
INTERNAL_IFACE=""
if [[ -n "${NAT_IFACE}" ]]; then
  INTERNAL_IFACE="$(ip -o link show 2>/dev/null \
    | awk -F': ' '{print $2}' \
    | grep -v '^lo$' \
    | grep -v "^${NAT_IFACE}$" \
    | head -n1 || true)"
fi

if [[ -n "${INTERNAL_IFACE}" ]]; then
  INTERNAL_IFACE="${INTERNAL_IFACE%%@*}"
  echo "    Adaptador interno: ${INTERNAL_IFACE}"
  if command -v resolvectl >/dev/null 2>&1; then
    resolvectl dns "${INTERNAL_IFACE}" 192.168.10.10 || true
    resolvectl domain "${INTERNAL_IFACE}" nexatech.local || true
  fi
else
  echo "    Aviso: adaptador interno nao identificado; configure o DNS manualmente."
fi

# Atualizacao e pacotes basicos
export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get install -y \
  curl \
  wget \
  vim \
  nano \
  net-tools \
  dnsutils \
  iputils-ping \
  tcpdump \
  rsync \
  openssh-server \
  ufw \
  fail2ban \
  ca-certificates \
  gnupg \
  lsb-release

systemctl enable --now ssh

echo ""
echo "==> ${HOSTNAME} configurado."
ip -4 addr show | sed -n '1,120p'
echo ""
echo "Servicos de rede serao configurados nas aulas especificas."
