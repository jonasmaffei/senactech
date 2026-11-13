# Laboratório VirtualBox - Aula 12: DNS no Windows Server

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano de DNS com zonas direta e reversa, registros e evidências de resolução.

---

## Objetivo

Configurar zonas DNS integradas ao Active Directory para resolver nomes dos servidores e clientes.

## VMs desta aula

Consulte a base comum e use apenas as VMs necessárias para esta prática. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar a zona direta nexatech.local
2. Criar a zona reversa da faixa 192.168.10.0/24
3. Cadastrar registros de servidores e apelidos
4. Configurar encaminhadores externos
5. Testar resolução direta e reversa no cliente

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula12"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula12"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Consolida a camada de nomes da NexaTech.

**O que fica em aberto:** Entregar endereçamento automático aos clientes com DHCP.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula12.html) e a [atividade](../atividade.md).
