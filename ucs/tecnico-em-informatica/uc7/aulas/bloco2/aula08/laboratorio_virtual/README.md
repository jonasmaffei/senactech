# Laboratório VirtualBox - Aula 08: Instalação e configuração inicial do Windows Server

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Checklist de instalação preenchida com evidências e configurações do servidor.

---

## Objetivo

Instalar o Windows Server e executar a configuração inicial segura do servidor.

## VMs desta aula

DC01.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Instalar o Windows Server na VM do laboratório
2. Definir nome, IP estático, DNS e fuso horário
3. Executar atualizações e ativar o sistema
4. Instalar as funções iniciais e habilitar administração remota

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula08"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula08"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Inicia o Bloco 2 instalando a base que receberá o Active Directory.

**O que fica em aberto:** Um servidor isolado não autentica ninguém; é preciso criar o domínio.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula08.html) e a [atividade](../atividade.md).
