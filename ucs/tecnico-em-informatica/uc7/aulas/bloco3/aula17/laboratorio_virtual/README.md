# Laboratório VirtualBox - Aula 17: pfSense: instalação e configuração inicial

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** pfSense instalado e acesso à interface web documentado.

---

## Objetivo

Instalar o pfSense em uma VM com duas interfaces e configurar o acesso inicial.

## VMs desta aula

FW01 (pfSense) com dois adaptadores: NAT (WAN) e Rede Interna `rede-nexatech` (LAN). Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Baixar a ISO e criar a VM FW01
2. Adaptador 1 em NAT (WAN) e adaptador 2 na rede interna (LAN)
3. Instalar e definir as interfaces
4. Configurar o IP da LAN e acessar a interface web
5. Atualizar o pfSense e tirar snapshot

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula17"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula17"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Entrega o perímetro de segurança da NexaTech.

**O que fica em aberto:** Configurar DHCP, regras e NAT para liberar a navegação com segurança.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula17.html) e a [atividade](../atividade.md).
