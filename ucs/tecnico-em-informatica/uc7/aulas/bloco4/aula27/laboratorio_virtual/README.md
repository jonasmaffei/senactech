# Laboratório VirtualBox - Aula 27: Banco de dados e integração da aplicação

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Aplicação de teste:** [`aplicacao-teste/`](../../../../laboratorio_virtual/aplicacao-teste/README.md)  
**Entrega da aula:** Aplicação integrada ao banco funcionando nos clientes, com evidências do fluxo completo.

---

## Objetivo

Configurar o servidor de banco de dados e integrar a aplicação PHP ao DB01.

## VMs desta aula

APP01 (aplicação), DB01 (banco) e CLI01/CLI02 (teste do fluxo). Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Executar install-db.sh no DB01
2. Validar banco, usuário e permissões com check-db.sh
3. Copiar a senha para o APP01 e executar deploy-app.sh
4. Executar test-connection.sh e testar o fluxo nos clientes
5. Registrar backup inicial e documentar a arquitetura

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

Valida o fluxo completo da aplicação da NexaTech.

**O que fica em aberto:** Com a aplicação funcionando, é preciso endurecer a segurança.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula27.html) e a [atividade](../atividade.md).
