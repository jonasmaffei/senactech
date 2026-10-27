# Laboratório Virtual - Aula 05: Planejamento da instalação e documentação

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano de instalação da NexaTech com cronograma, riscos e critérios de aceite.

---

## Objetivo

Produzir um plano de instalação com requisitos, riscos, backup, licenciamento e cronograma.

## VMs desta aula

DC01 e LNX01 (usadas como referência de capacidade).

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Criar a checklist de pré-instalação
2. Montar a matriz de riscos com probabilidade, impacto e resposta
3. Definir a ordem de instalação dos serviços
4. Escrever os critérios de aceite de cada entrega

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant status
vagrant winrm dc01 -c "Get-ComputerInfo"
vagrant ssh lnx01 -c "lscpu && free -h && lsblk"
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Organiza a execução das aulas seguintes e evita improviso na configuração.

**O que fica em aberto:** O plano está no papel; falta montar o laboratório e validar a rede de ponta a ponta.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula05.html) e a [atividade](../atividade.md).
