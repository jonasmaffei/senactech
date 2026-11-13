# Laboratório VirtualBox - Aula 32: Projeto integrador: apresentação e defesa

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Projeto integrador completo e defesa oral.

---

## Objetivo

Apresentar e defender o projeto completo de rede cliente/servidor da NexaTech, com evidências de instalação, configuração e monitoramento.

## VMs desta aula

DC01, CLI01, CLI02, APP01, DB01 e FW01.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.


## Roteiro

1. Apresentar o projeto em 10 a 15 minutos
2. Demonstrar login, DNS/DHCP, arquivos, web, pfSense e monitoramento
3. Responder à arguição da banca
4. Entregar a documentação final e a autoavaliação

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
VBoxManage list vms
VBoxManage list runningvms
VBoxManage snapshot "NOME_DA_VM" take "baseline-aula32"
VBoxManage snapshot "NOME_DA_VM" restore "baseline-aula32"
```


## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.
- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.


## Relação com o projeto

Fecha a UC provando que o aluno consegue planejar, instalar, configurar e monitorar uma rede cliente/servidor.

**O que fica em aberto:** Depois da UC, o próximo passo é aprofundar certificações e especializações.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula32.html) e a [atividade](../atividade.md).
