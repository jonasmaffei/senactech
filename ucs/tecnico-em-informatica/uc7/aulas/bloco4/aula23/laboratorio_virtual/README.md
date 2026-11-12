# Laboratório Virtual - Aula 23: Governança de TI, segurança e certificações

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Dossiê de governança de TI com catálogo, riscos e roadmap de certificações.

---

## Objetivo

Aplicar conceitos de governança e segurança na administração dos servidores e planejar certificações.

## VMs desta aula

Não é obrigatório subir VMs; use a documentação do projeto. Se quiser demonstrar, use DC01 e LNX01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Criar catálogo de serviços e matriz de riscos
2. Mapear controles de segurança e evidências
3. Comparar trilhas de certificação
4. Montar um plano de melhoria para a NexaTech

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
# Aula de governanca: use a documentacao do projeto.
# Se quiser demonstrar, suba DC01 e LNX01.
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Dá sustentação organizacional ao ambiente técnico construído na UC.

**O que fica em aberto:** Tudo precisa ser consolidado e defendido em um projeto final.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula23.html) e a [atividade](../atividade.md).
