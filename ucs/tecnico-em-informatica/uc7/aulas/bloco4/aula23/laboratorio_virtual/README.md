# Laboratório VirtualBox - Aula 23: SSH e administração remota

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Checklist de SSH seguro com testes de acesso e bloqueio de root.

---

## Objetivo

Habilitar e endurecer o SSH para administrar o servidor Linux remotamente.

## VMs desta aula

APP01 e DB01. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Instalar o openssh-server
2. Desabilitar login root e senhas vazias
3. Criar par de chaves e copiar para o servidor
4. Testar login e acesso negado
5. Registrar a configuração final

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula23"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula23"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Habilita a operação remota segura do servidor Linux.

**O que fica em aberto:** Endurecer o restante do servidor e revisar os serviços expostos.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula23.html) e a [atividade](../atividade.md).
