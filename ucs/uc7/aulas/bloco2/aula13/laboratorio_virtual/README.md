# Laboratório Virtual - Aula 13: Automação e monitoramento no Windows Server

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Script de automação e plano de monitoramento do Windows Server.

---

## Objetivo

Automatizar tarefas rotineiras e monitorar a saúde do Windows Server com ferramentas nativas.

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

1. Criar script que verifica disco, serviços e eventos críticos
2. Agendar o script no Task Scheduler
3. Criar um data collector set no Performance Monitor
4. Gerar um relatório simples e analisar os resultados

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

Fecha o Bloco 2 com o ambiente Windows operável e observável.

**O que fica em aberto:** A empresa também precisa de serviços abertos e de baixo custo; entra o Linux.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula13.html) e a [atividade](../atividade.md).
