# Laboratório VirtualBox - Aula 18: pfSense: firewall, NAT e liberação de internet

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense.

---

## Objetivo

Configurar DHCP, regras de firewall e NAT no pfSense para liberar a navegação da LAN.

## VMs desta aula

FW01 (pfSense), APP01 ou CLI01 como cliente da LAN. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Configurar o DHCP da LAN em 192.168.10.100-200
2. Criar regra na LAN permitindo web e DNS
3. Conferir o NAT automático de saída
4. Testar ping, curl e abrir um site no cliente
5. Conferir os logs e exportar o backup da configuração

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula18"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula18"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Prova que a LAN navega com controle e evidências.

**O que fica em aberto:** Integrar o firewall ao restante do ambiente e documentar o acesso remoto seguro.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula18.html) e a [atividade](../atividade.md).
