# Laboratório VirtualBox - Aula 31: Governança de TI, segurança e certificações

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Dossiê de governança de TI com catálogo, riscos e roadmap de certificações.

---

## Objetivo

Aplicar conceitos de governança e segurança na administração dos servidores e planejar certificações.

## VMs desta aula

Não é obrigatório subir VMs; use a documentação do projeto. Se quiser demonstrar, use DC01 e APP01.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar catálogo de serviços e matriz de riscos
2. Mapear controles de segurança e evidências
3. Comparar trilhas de certificação
4. Montar um plano de melhoria para a NexaTech

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula31"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula31"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Dá sustentação organizacional ao ambiente técnico construído na UC.

**O que fica em aberto:** Tudo precisa ser consolidado e defendido em um projeto final.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula31.html) e a [atividade](../atividade.md).
