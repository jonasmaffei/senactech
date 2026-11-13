# Laboratório VirtualBox - Aula 09: Active Directory Domain Services

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Domínio nexatech.local criado, com evidência de promoção e verificação do controlador.

---

## Objetivo

Instalar a função AD DS e promover o Windows Server a controlador do domínio nexatech.local.

## VMs desta aula

DC01. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Verificar IP e DNS do DC01
2. Instalar a função AD DS
3. Promover o servidor a controlador do domínio nexatech.local
4. Reiniciar e validar com dcdiag
5. Registrar evidências da promoção

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

Entrega o domínio que sustentará a identidade da NexaTech.

**O que fica em aberto:** Com o domínio criado, os clientes Windows 10 precisam ingressar nele.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula09.html) e a [atividade](../atividade.md).
