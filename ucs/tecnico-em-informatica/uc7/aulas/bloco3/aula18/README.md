# Aula 18 - pfSense: firewall, NAT e liberação de internet

**Data sugerida:** 10/12/2026 (quinta-feira)
**Bloco:** 3 - Redes, Roteamento e Firewall
**Carga:** 3 horas

---

## Objetivo

Configurar DHCP, regras de firewall e NAT no pfSense para liberar a navegação da LAN.

---

## Situação de aprendizagem

Com o pfSense no lugar, os clientes da rede interna precisam navegar sem expor a LAN.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense. |
| [`apresentacao_aula18.html`](apresentacao_aula18.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Regras na interface LAN e política padrão |
| NAT de saída e aliases |
| DHCP e DNS no pfSense |
| Logs e diagnóstico |
| Bloqueio de tráfego indesejado |
| Backup da configuração |

### Ferramentas

pfSense, cliente Windows/Ubuntu, navegador, curl

---

## Prática em laboratório

Laboratório de liberação de internet através do pfSense.

1. Configurar o DHCP da LAN em 192.168.10.100-200
2. Criar regra na LAN permitindo web e DNS
3. Conferir o NAT automático de saída
4. Testar ping, curl e abrir um site no cliente
5. Conferir os logs e exportar o backup da configuração

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Relatório do laboratório com regras, NAT e teste de navegação pelo pfSense.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Se a regra padrão da LAN fosse liberar tudo, quais riscos apareceriam?

---

## Relação com o projeto

Prova que a LAN navega com controle e evidências.

**O que fica em aberto:** Integrar o firewall ao restante do ambiente e documentar o acesso remoto seguro.

**Impacto de negócio:** Libera a navegação com regras explícitas, logs e possibilidade de auditoria.


## Próxima aula

**Aula 19 - Serviços web (IIS), acesso remoto e administração.** Publicar serviços web no Windows Server e configurar administração remota segura.

---

> Voltar para o [índice do Bloco 3](../README.md).
