# Laboratório VirtualBox - Aula 09: Active Directory Domain Services

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Estrutura do Active Directory documentada e teste de login no domínio.

---

## Objetivo

Configurar o Active Directory, criar a estrutura organizacional e gerenciar usuários e grupos.

## VMs desta aula

DC01 e CLI01.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Promover o servidor a controlador do domínio nexatech.local
2. Criar OUs para Administração, Vendas, Suporte e Servidores
3. Criar usuários e grupos de segurança
4. Ingressar um cliente Windows no domínio e testar login

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula09"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula09"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Transforma o servidor instalado na Aula 07 em uma autoridade de autenticação.

**O que fica em aberto:** O domínio precisa de DNS confiável e de endereçamento automático para os clientes.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula09.html) e a [atividade](../atividade.md).
