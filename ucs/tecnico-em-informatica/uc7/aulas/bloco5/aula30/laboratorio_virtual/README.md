# Laboratório VirtualBox - Aula 30: Monitoramento, automação e troubleshooting

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano de monitoramento, script de automação e registro de troubleshooting.

---

## Objetivo

Monitorar servidores, automatizar rotinas e diagnosticar falhas no ambiente integrado.

## VMs desta aula

APP01 (monitoramento), DC01 e DB01 (hosts monitorados). Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Instalar o monitoramento no APP01
2. Adicionar DC01, APP01 e DB01 como hosts
3. Criar dashboard e alerta
4. Criar script/timer de verificação
5. Resolver cenários de falha e registrar o diagnóstico

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
# Ubuntu
sudo systemctl status apache2
sudo systemctl status mariadb

# Health check da aplicacao
curl -H "Host: app.nexatech.local" http://192.168.10.20/health.php
sudo systemctl status isc-dhcp-server
sudo systemctl status bind9
```

## Observações

- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.
- O Windows Server mantém o DNS e o DHCP oficiais do domínio; os serviços Linux são usados para comparação e prática.

## Relação com o projeto

Torna a operação observável e diagnosticável.

**O que fica em aberto:** Organizar processos, riscos e controles de governança.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula30.html) e a [atividade](../atividade.md).
