# Laboratório VirtualBox - Aula 19: Serviços web (IIS), acesso remoto e administração

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Catálogo de serviços web no IIS + checklist de acesso remoto seguro.

---

## Objetivo

Publicar serviços web no Windows Server e configurar administração remota segura.

## VMs desta aula

DC01 e CLI01/CLI02. Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Publicar uma intranet simples no IIS
2. Configurar HTTPS com certificado de teste
3. Restringir o RDP por firewall
4. Administrar por Windows Admin Center ou WinRM
5. Documentar portas e acessos

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

Completa o espelhamento dos serviços web entre Windows e Linux.

**O que fica em aberto:** Com os serviços web e o acesso remoto entendidos, começa o servidor Linux da aplicação.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula19.html) e a [atividade](../atividade.md).
