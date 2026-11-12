# Laboratório Virtual - Aula 22: Computação em nuvem e tecnologias emergentes

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Recomendação de nuvem para a NexaTech com análise de custo e risco.

---

## Objetivo

Comparar on-premise e nuvem e avaliar tecnologias emergentes para a infraestrutura da NexaTech.

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

1. Montar uma comparação de TCO entre on-premise e nuvem
2. Criar uma VM gratuita ou simular um serviço em nuvem
3. Executar um container simples e comparar com VM
4. Avaliar riscos de LGPD e dependência de fornecedor

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

Amplia o horizonte do projeto e conecta a infraestrutura local às tendências de mercado.

**O que fica em aberto:** A escolha tecnológica precisa ser sustentada por governança e conformidade.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula22.html) e a [atividade](../atividade.md).
