# Laboratório Virtual - Aula 21: Backup, continuidade e resposta a incidentes

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Mini plano de continuidade com RPO, RTO, backups e playbook de incidentes.

---

## Objetivo

Definir estratégia de backup, continuidade de negócio e resposta a incidentes para a NexaTech.

## VMs desta aula

MON01, DC01, LNX01 e CLI01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Executar um simulado de falha e restaurar os serviços
2. Medir o tempo de recuperação
3. Criar um playbook de resposta a incidentes
4. Registrar lições aprendidas

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up mon01 dc01 lnx01 cli01
vagrant ssh mon01
vagrant ssh lnx01
vagrant winrm dc01 -c "Get-Service"
vagrant snapshot save mon01 baseline-mon01
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Protege tudo o que foi construído nos blocos anteriores.

**O que fica em aberto:** A empresa precisa decidir o que mantém na própria infraestrutura e o que vai para a nuvem.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula21.html) e a [atividade](../atividade.md).
