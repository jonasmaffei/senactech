# Atividade - Aula 01: TCP/IP e IPv4

**Entrega:** Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Compreender o modelo TCP/IP e o endereçamento IPv4, criando duas VMs Windows 10 na mesma rede interna e testando a comunicação.

## Contexto

Antes de instalar servidores, a equipe precisa entender como os pacotes circulam e como os endereços IP serão distribuídos na rede local.

## Dor e solução

**Dor:** A equipe não entende como os pacotes circulam nem como distribuir os endereços IP.  
**Impacto:** Sem um plano de endereçamento, surgem conflitos de IP e as máquinas não se comunicam.  
**Exemplo de solução:** Explicar TCP/IP e IPv4, definir a rede 192.168.10.0/24 e testar a comunicação entre CLI01 e CLI02.  
**Prioridade:** Essencial

## O que deve ser entregue

Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping.

## Etapas

1. Criar as VMs CLI01 e CLI02 com Windows 10
2. Adicionar as duas VMs à rede interna rede-nexatech
3. Configurar IPs diferentes na mesma rede: 192.168.10.100 e 192.168.10.101
4. Testar ping entre as duas VMs nos dois sentidos
5. Registrar prints do ipconfig e do ping

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Por que uma máscara ou gateway errado derruba a comunicação mesmo com o cabo conectado?

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
