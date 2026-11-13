# Laboratório VirtualBox - Aula 20: Instalação e configuração inicial do Ubuntu Server

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Checklist de instalação do Ubuntu (APP01 e DB01) com particionamento, rede, SSH e evidências.

---

## Objetivo

Instalar o Ubuntu Server sem interface gráfica nas VMs APP01 e DB01, particionar o disco e configurar rede, SSH e atualizações.

## VMs desta aula

APP01 e DB01 (instalação do Ubuntu Server). Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar a VM com dois adaptadores (NAT e rede interna)
2. Particionar: EFI 200 MB, / 20 GB ext4, /home 25 GB ext4 e swap
3. Instalar sem ambiente gráfico
4. Configurar IP estático 192.168.10.20 e hostname
5. Instalar SSH, atualizar o sistema e configurar o ufw

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula20"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula20"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Entrega o servidor Linux base da NexaTech.

**O que fica em aberto:** Aprender a operar serviços, processos, logs e agendamentos.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula20.html) e a [atividade](../atividade.md).
