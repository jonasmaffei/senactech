# Laboratório Virtual - Aula 15: Administração e operação do Linux

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Runbook de operação do Linux Server.

---

## Objetivo

Operar serviços, processos, armazenamento, logs e agendamentos em um servidor Linux.

## VMs desta aula

LNX01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Criar um serviço systemd simples
2. Agendar um backup com systemd timer
3. Analisar logs e identificar um erro
4. Verificar uso de disco e permissões de arquivos

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up lnx01
vagrant ssh lnx01
vagrant ssh lnx01 -c "systemctl status ssh"
vagrant snapshot save lnx01 baseline-lnx01
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Transforma a instalação da Aula 14 em operação repetível e auditável.

**O que fica em aberto:** Com a operação sob controle, é hora de publicar os serviços de rede no Linux.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula15.html) e a [atividade](../atividade.md).
