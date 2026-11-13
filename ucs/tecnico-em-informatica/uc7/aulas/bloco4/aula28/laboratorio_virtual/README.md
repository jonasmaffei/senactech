# Laboratório VirtualBox - Aula 28: Segurança em servidores Linux

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Relatório de auditoria de segurança com antes, depois e justificativas.

---

## Objetivo

Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.

## VMs desta aula

APP01 e DB01.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Endurecer a configuração do SSH no APP01 e no DB01
2. Configurar firewall e fail2ban
3. Auditar usuários, permissões e serviços ativos
4. Comparar o antes e o depois com evidências

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula28"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula28"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Protege os serviços publicados nas Aulas 24 a 27 e prepara a integração com Windows.

**O que fica em aberto:** Protegido o servidor, ainda é preciso compartilhar arquivos e garantir recuperação.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula28.html) e a [atividade](../atividade.md).
