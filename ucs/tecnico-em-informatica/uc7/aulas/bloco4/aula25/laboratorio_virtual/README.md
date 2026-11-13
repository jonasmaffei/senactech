# Laboratório VirtualBox - Aula 25: DNS no Linux

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Zonas BIND9 configuradas e evidências de resolução direta e reversa.

---

## Objetivo

Instalar e configurar o BIND9 no Ubuntu Server para resolver nomes da rede.

## VMs desta aula

Use as VMs indicadas no roteiro e mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Instalar o bind9 no APP01
2. Configurar zonas para senactech.edu.br
3. Criar a zona reversa
4. Definir forwarders 8.8.8.8 e 8.8.4.4
5. Validar com named-checkzone e testar com dig

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
# Ubuntu
sudo systemctl status apache2
sudo systemctl status mariadb
sudo systemctl status isc-dhcp-server
sudo systemctl status bind9
```

## Observações

- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.
- O Windows Server mantém o DNS e o DHCP oficiais do domínio; os serviços Linux são usados para comparação e prática.

## Relação com o projeto

Espelha o serviço de DNS entre Windows e Linux.

**O que fica em aberto:** Com DNS e DHCP dominados nos dois sistemas, é hora da aplicação web.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula25.html) e a [atividade](../atividade.md).
