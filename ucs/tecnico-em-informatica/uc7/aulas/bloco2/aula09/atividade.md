# Atividade - Aula 09: DNS e DHCP no Windows Server

**Entrega:** Plano de DNS/DHCP com zonas, escopos, reservas e evidências de teste.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Configurar DNS e DHCP integrados ao Active Directory para atender os clientes da rede.

## Contexto

Os computadores da NexaTech precisam receber IP automaticamente e encontrar os servidores pelo nome. Sem DNS e DHCP bem configurados, o domínio e os compartilhamentos falham de forma intermitente.

## O que deve ser entregue

Plano de DNS/DHCP com zonas, escopos, reservas e evidências de teste.

## Etapas

1. Criar zona direta e reversa para nexatech.local
2. Cadastrar registros de servidores e apelidos
3. Criar escopo DHCP com faixa, gateway e DNS
4. Reservar IPs para servidores e impressoras e testar em um cliente

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

O que acontece com os clientes se o DHCP cair, e como reservas e failover reduzem esse impacto?

## Critérios de avaliação

| Critério | Peso |
| :--- | :---: |
| Correção técnica | 40% |
| Clareza e organização da documentação | 25% |
| Evidências de execução e testes | 20% |
| Justificativa das decisões e reflexão | 15% |

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
