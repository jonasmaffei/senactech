# Laboratório Virtual - Aula 09: DNS e DHCP no Windows Server

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano de DNS/DHCP com zonas, escopos, reservas e evidências de teste.

---

## Objetivo

Configurar DNS e DHCP integrados ao Active Directory para atender os clientes da rede.

## VMs desta aula

DC01 e CLI01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Criar zona direta e reversa para nexatech.local
2. Cadastrar registros de servidores e apelidos
3. Criar escopo DHCP com faixa, gateway e DNS
4. Reservar IPs para servidores e impressoras e testar em um cliente

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up dc01 cli01
vagrant winrm dc01 -c "hostname"
vagrant winrm cli01 -c "ipconfig /all"
vagrant rdp dc01
vagrant snapshot save dc01 antes-ad
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Dá suporte ao domínio da Aula 08 e prepara o compartilhamento de arquivos.

**O que fica em aberto:** Com nomes e endereços resolvidos, os usuários precisam de pastas e permissões.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula09.html) e a [atividade](../atividade.md).
