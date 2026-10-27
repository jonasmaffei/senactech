# Laboratório Virtual - Aula 16: Serviços de rede no Linux: DNS, DHCP e web

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Configurações comentadas e evidências dos testes dos três serviços.

---

## Objetivo

Configurar DNS, DHCP e servidor web em Linux para atender a rede da NexaTech.

## VMs desta aula

LNX01 e CLI01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Configurar zona DNS no BIND e testar com dig
2. Criar escopo DHCP para visitantes
3. Publicar uma intranet simples no Nginx ou Apache
4. Testar resolução, endereçamento e acesso web

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up lnx01 cli01
vagrant ssh lnx01
vagrant winrm cli01 -c "ping 192.168.10.20"
vagrant snapshot save lnx01 antes-hardening
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Coloca o Linux como servidor de serviços, não apenas como máquina de testes.

**O que fica em aberto:** Serviços publicados aumentam a superfície de ataque e exigem hardening.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula16.html) e a [atividade](../atividade.md).
