# Aula 19 - Laboratório integrado e troubleshooting

**Data sugerida:** 10/12/2026 (quinta-feira)  
**Bloco:** 3 - Linux Server e Segurança  
**Carga:** 4 horas

---

## Objetivo

Integrar serviços Windows e Linux e diagnosticar falhas comuns em um ambiente misto.

---

## Situação de aprendizagem

Depois da implantação, os usuários começam a relatar problemas intermitentes: login lento, nomes que não resolvem, pastas inacessíveis e intranet fora do ar. A equipe precisa de método, não de chute.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Registro de troubleshooting e relatório do ambiente integrado. |
| [`apresentacao_aula19.html`](apresentacao_aula19.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com Vagrant + VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Fluxo DHCP -> DNS -> autenticação -> arquivos/web |
| Metodologia de troubleshooting e registro de hipóteses |
| Ferramentas: ping, traceroute, dig, nslookup, ss, tcpdump, Wireshark |
| Event Viewer, journalctl e logs de firewall |
| Problemas comuns: DNS, horário, firewall, permissões e certificados |
| Documentação da solução e gestão de mudanças |

### Ferramentas

Ferramentas de rede, logs do Windows e Linux, Wireshark

---

## Prática em laboratório

Diagnóstico de cenários quebrados e validação do ambiente integrado.

1. Resolver cenários de falha preparados pelo docente
2. Registrar sintoma, hipótese, teste e solução
3. Validar o ambiente integrado de ponta a ponta
4. Atualizar a documentação com as correções

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Registro de troubleshooting e relatório do ambiente integrado.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Como o registro do diagnóstico ajuda a equipe a não repetir o mesmo erro no futuro?

---

## Relação com o projeto

Fecha o Bloco 3 provando que os dois sistemas operacionais funcionam juntos.

**O que fica em aberto:** O ambiente funciona, mas ainda não está sendo observado de forma contínua.

**Impacto de negócio:** Diagnóstico estruturado reduz tempo de parada e melhora a confiança dos usuários.


## Próxima aula

**Aula 20 - Monitoramento de servidores e serviços.** Monitorar detecta falhas; é preciso também recuperar dados e continuar operando.

---

> Voltar para o [índice do Bloco 3](../README.md).
