# Laboratório VirtualBox - Aula 26: Servidor web Apache + PHP

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Aplicação PHP publicada no APP01 com evidências de acesso pelos clientes.

---

## Objetivo

Publicar a aplicação web em Apache e PHP no Ubuntu Server.

## VMs desta aula

Use as VMs indicadas no roteiro e mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Instalar Apache e PHP no APP01
2. Criar o virtual host da aplicação
3. Publicar a página inicial em PHP
4. Testar pelo navegador do CLI01 e do CLI02
5. Registrar a configuração e as permissões

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

Entrega a camada web da aplicação.

**O que fica em aberto:** A aplicação precisa de um banco de dados dedicado.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula26.html) e a [atividade](../atividade.md).
