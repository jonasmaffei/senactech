# Laboratório VirtualBox - Aula 10: Controlador de domínio e ingresso de clientes

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Evidência de promoção do controlador de domínio e login do CLI01 no domínio.

---

## Objetivo

Promover o Windows Server a controlador de domínio e ingressar o cliente no domínio nexatech.local.

## VMs desta aula

Consulte a base comum e use apenas as VMs necessárias para esta prática. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Verificar IP e DNS do DC01
2. Instalar a função AD DS e promover nexatech.local
3. Configurar o CLI01 com o DNS do DC01
4. Ingressar o CLI01 e fazer login com usuário do domínio
5. Validar com whoami /fqdn e registrar eventos

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula10"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula10"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Entrega o núcleo de identidade da NexaTech.

**O que fica em aberto:** Organizar setores, usuários e grupos dentro do domínio recém-criado.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula10.html) e a [atividade](../atividade.md).
