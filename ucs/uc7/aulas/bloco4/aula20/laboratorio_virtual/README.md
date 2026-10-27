# Laboratório Virtual - Aula 20: Monitoramento de servidores e serviços

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano de monitoramento com métricas, limiares, dashboards e alertas.

---

## Objetivo

Implementar monitoramento de métricas, logs e alertas para os servidores da NexaTech.

## VMs desta aula

MON01, DC01 e LNX01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Instalar Zabbix ou Prometheus/Grafana na VM de monitoramento
2. Adicionar o Windows Server e o Linux como hosts monitorados
3. Criar um dashboard com CPU, memória, disco e disponibilidade
4. Configurar um alerta e testar a notificação

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up mon01 dc01 lnx01
vagrant ssh mon01
vagrant ssh lnx01
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Inicia o Bloco 4 transformando o ambiente instalado em um serviço observável.

**O que fica em aberto:** Monitorar detecta falhas; é preciso também recuperar dados e continuar operando.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula20.html) e a [atividade](../atividade.md).
