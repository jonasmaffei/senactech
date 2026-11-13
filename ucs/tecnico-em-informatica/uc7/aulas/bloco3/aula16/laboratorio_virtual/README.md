# Laboratório VirtualBox - Aula 16: Roteamento e NAT

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Configuração de NAT aplicada e teste de internet a partir do cliente.

---

## Objetivo

Entender como um servidor ou firewall encaminha pacotes entre redes e aplica NAT para liberar internet.

## VMs desta aula

Consulte a base comum e use apenas as VMs necessárias para esta prática. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Habilitar ip_forward no Linux ou RRAS no Windows
2. Configurar NAT de saída na interface WAN
3. Ajustar o gateway no cliente
4. Testar internet e registrar as regras
5. Tirar snapshot da configuração

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula16"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula16"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Prepara a camada de saída que o pfSense vai assumir.

**O que fica em aberto:** Centralizar as regras em um firewall dedicado e auditável.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula16.html) e a [atividade](../atividade.md).
