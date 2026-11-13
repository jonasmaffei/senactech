# Laboratório VirtualBox - Aula 14: Compartilhamento de arquivos, permissões e quotas

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Matriz de permissões e relatório de testes de acesso.

---

## Objetivo

Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.

## VMs desta aula

DC01 e CLI01.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Criar pastas por setor e compartilhar via SMB
2. Aplicar permissões NTFS usando grupos
3. Configurar quotas e cópias de sombra
4. Mapear unidades e testar acessos permitidos e negados

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula14"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula14"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Entrega o serviço que mais afeta o dia a dia dos usuários da NexaTech.

**O que fica em aberto:** As permissões estão corretas, mas precisam ser aplicadas de forma padronizada em todos os computadores.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula14.html) e a [atividade](../atividade.md).
