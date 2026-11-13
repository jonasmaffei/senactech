# Atividade - Aula 18: pfSense: firewall, NAT e liberação de internet

**Entrega:** Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Configurar DHCP, regras de firewall e NAT no pfSense para liberar a navegação da LAN.

## Contexto

Com o pfSense no lugar, os clientes da rede interna precisam navegar sem expor a LAN.

## O que deve ser entregue

Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense.

## Etapas

1. Configurar o DHCP da LAN em 192.168.10.100-200
2. Criar regra na LAN permitindo web e DNS
3. Conferir o NAT automático de saída
4. Testar ping, curl e abrir um site no cliente
5. Conferir os logs e exportar o backup da configuração

## Evidências esperadas

- Documento ou planilha com as decisões e justificativas.
- Capturas de tela ou saídas de comando que comprovem a execução.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Se a regra padrão da LAN fosse liberar tudo, quais riscos apareceriam?

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
