# Laboratório VirtualBox - Aula 15: GPOs e políticas de segurança

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação.

---

## Objetivo

Aplicar políticas de grupo para padronizar segurança e configurações nos clientes do domínio.

## VMs desta aula

DC01 e CLI01.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar GPO de política de senha e bloqueio de tela
2. Mapear unidades de rede e impressoras por setor
3. Aplicar configurações de firewall e atualizações
4. Validar com gpresult e testar com usuários de OUs diferentes

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula15"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula15"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Aplica em escala as permissões e padrões definidos nas aulas anteriores.

**O que fica em aberto:** O ambiente interno está padronizado; falta publicar serviços e permitir administração remota segura.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula15.html) e a [atividade](../atividade.md).
