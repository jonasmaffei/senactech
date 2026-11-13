# Laboratório VirtualBox - Aula 24: DHCP no Linux

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Configuração do DHCP Linux comentada e evidência de concessão para o cliente.

---

## Objetivo

Instalar e configurar o DHCP no Ubuntu Server para atender a LAN de laboratório.

## VMs desta aula

APP01 (serviço DHCP) e CLI01/CLI02 (clientes). Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Instalar o isc-dhcp-server no APP01
2. Configurar a rede 192.168.10.0/24
3. Definir faixa, gateway e DNS
4. Iniciar e habilitar o serviço
5. Testar a concessão em CLI01/CLI02 e registrar logs

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

Amplia o domínio de serviços de rede em Linux.

**O que fica em aberto:** O próximo serviço espelhado é o DNS.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula24.html) e a [atividade](../atividade.md).
