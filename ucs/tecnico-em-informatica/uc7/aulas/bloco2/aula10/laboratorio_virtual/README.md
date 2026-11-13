# Laboratório VirtualBox - Aula 10: Controlador de domínio e ingresso de clientes

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Evidência de login dos clientes CLI01 e CLI02 no domínio.

---

## Objetivo

Validar o controlador de domínio e ingressar os clientes Windows 10 no domínio nexatech.local.

## VMs desta aula

DC01, CLI01 e CLI02. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Verificar IP e DNS do DC01
2. Configurar o CLI01 e o CLI02 com o DNS do DC01
3. Ingressar as duas VMs no domínio nexatech.local
4. Fazer login com usuário do domínio
5. Validar com whoami /fqdn e registrar eventos

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
dcdiag
nltest /dsgetdc:nexatech.local
whoami /fqdn
```

## Observações

- O cliente precisa usar o DNS do DC01 para ingressar no domínio.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.

## Relação com o projeto

Completa a integração dos clientes ao domínio da NexaTech.

**O que fica em aberto:** Com os clientes no domínio, é preciso organizar setores, grupos, usuários e permissões.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula10.html) e a [atividade](../atividade.md).
