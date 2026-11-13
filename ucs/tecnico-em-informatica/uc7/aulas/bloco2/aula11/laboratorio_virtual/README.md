# Laboratório VirtualBox - Aula 11: Unidades organizacionais, grupos e usuários

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Estrutura de OUs, grupos e usuários documentada, com evidência de logins.

---

## Objetivo

Criar a estrutura organizacional do domínio e gerenciar usuários e grupos por setor.

## VMs desta aula

Consulte a base comum e use apenas as VMs necessárias para esta prática. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar as OUs ADM, RH, PROD e TI
2. Criar grupos de segurança por setor
3. Criar usuários e adicionar aos grupos
4. Testar login de um usuário comum
5. Documentar a estrutura criada

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula11"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula11"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Organiza a identidade e as permissões da NexaTech.

**O que fica em aberto:** Publicar serviços de rede que dependem do domínio: DNS e DHCP.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula11.html) e a [atividade](../atividade.md).
