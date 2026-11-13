# Laboratório VirtualBox - Aula 27: Banco de dados e integração da aplicação

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Aplicação integrada ao banco funcionando nos clientes, com evidências do fluxo completo.

---

## Objetivo

Configurar o servidor de banco de dados e integrar a aplicação PHP ao DB01.

## VMs desta aula

Use as VMs indicadas no roteiro e mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Instalar MariaDB no DB01
2. Criar banco, usuário e tabelas
3. Configurar a conexão da aplicação com o DB01
4. Testar o fluxo no CLI01 e no CLI02
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
