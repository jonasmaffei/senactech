# Laboratório VirtualBox - Aula 02: O servidor na rede local e a UC7

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Diagnóstico inicial de uma página com os serviços que precisam ser centralizados.

---

## Objetivo

Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e o cenário que conduzirá a UC7.

## VMs desta aula

Nenhuma VM é obrigatória nesta aula. O foco é planejamento e documentação no host.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Inventariar os recursos e as dores da NexaTech
2. Classificar os serviços entre essenciais, importantes e opcionais
3. Montar um mapa inicial de serviços e responsáveis
4. Definir os papéis da equipe e o fluxo de documentação

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula02"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula02"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Abre a UC e estabelece o problema de negócio que será resolvido ao longo das 32 aulas.

**O que fica em aberto:** Quais serviços serão necessários e como eles se conectam fisicamente?

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula02.html) e a [atividade](../atividade.md).
