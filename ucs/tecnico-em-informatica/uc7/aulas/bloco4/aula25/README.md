# Aula 25 - DNS no Linux

**Data sugerida:** 26/01/2027 (terça-feira)
**Bloco:** 4 - Linux Server e Segurança
**Carga:** 3 horas

---

## Objetivo

Instalar e configurar o BIND9 no Ubuntu Server para resolver nomes da rede.

---

## Situação de aprendizagem

O DNS do Windows atende o domínio; a NexaTech quer uma alternativa Linux para entender e comparar a configuração.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Zonas BIND9 configuradas e evidências de resolução direta e reversa. |
| [`apresentacao_aula25.html`](apresentacao_aula25.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| BIND9 e named.conf |
| Zonas direta e reversa |
| Registros e serial |
| Forwarders |
| named-checkconf e named-checkzone |
| Convivência com o DNS do Windows |

### Ferramentas

Ubuntu Server, BIND9, dig e nslookup

---

## Prática em laboratório

Configuração do DNS Linux com BIND9.

1. Instalar o bind9 no APP01
2. Configurar zonas para senactech.edu.br
3. Criar a zona reversa
4. Definir forwarders 8.8.8.8 e 8.8.4.4
5. Validar com named-checkzone e testar com dig

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Zonas BIND9 configuradas e evidências de resolução direta e reversa.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Quais cuidados são necessários para não conflitar com o DNS do domínio Windows?

---

## Relação com o projeto

Espelha o serviço de DNS entre Windows e Linux.

**O que fica em aberto:** Com DNS e DHCP dominados nos dois sistemas, é hora da aplicação web.

**Impacto de negócio:** Aumenta a resiliência e o repertório de operação de DNS.


## Próxima aula

**Aula 26 - Servidor web Apache + PHP.** Publicar a aplicação web em Apache e PHP no Ubuntu Server.

---

> Voltar para o [índice do Bloco 4](../README.md).
