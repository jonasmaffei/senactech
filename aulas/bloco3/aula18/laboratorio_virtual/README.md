# Laboratório Virtual - Aula 18: Arquivos, backup e interoperabilidade Linux

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano de backup e interoperabilidade com evidências de restauração.

---

## Objetivo

Configurar compartilhamento de arquivos, backup e integração do Linux com clientes Windows.

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

1. Configurar um compartilhamento Samba e acessar pelo Windows
2. Criar rotina de backup com rsync
3. Simular exclusão de arquivo e restaurar a versão anterior
4. Documentar permissões e retenção

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

Integra o Linux ao dia a dia dos usuários Windows e protege os dados da empresa.

**O que fica em aberto:** Windows e Linux já compartilham recursos; falta testar o ambiente integrado e diagnosticar falhas.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula18.html) e a [atividade](../atividade.md).
