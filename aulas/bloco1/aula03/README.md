# Aula 03 - Protocolos e serviços de rede

**Data sugerida:** 16/11/2026 (segunda-feira)  
**Bloco:** 1 - Fundamentos e Planejamento  
**Carga:** 4 horas

---

## Objetivo

Relacionar protocolos, portas e serviços necessários ao funcionamento dos servidores da rede local.

---

## Situação de aprendizagem

A equipe precisa definir quais serviços rodarão nos servidores e quais portas deverão ser liberadas no firewall. Um erro nessa matriz pode deixar a rede insegura ou quebrar serviços essenciais.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Matriz de serviços, protocolos, portas e riscos da NexaTech. |
| [`apresentacao_aula03.html`](apresentacao_aula03.html) | Slides de conceito (abra no navegador) |
| `laboratorio_virtual/` | Roteiro prático no VirtualBox (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Modelo OSI e pilha TCP/IP |
| TCP versus UDP |
| Portas essenciais: DNS 53, DHCP 67/68, HTTP 80, HTTPS 443, SMB 445, SSH 22, RDP 3389, LDAP 389/636 |
| DNS: hierarquia, tipos de registro e resolução |
| DHCP: descoberta, oferta, requisição e confirmação |
| HTTP/HTTPS, SMB, SSH, NTP e SNMP |
| Ferramentas de diagnóstico e captura de pacotes |

### Ferramentas

Prompt de comando, PowerShell, Wireshark, nslookup, dig, netstat/ss

---

## Prática em laboratório

Diagnóstico de rede no host e captura de tráfego local.

1. Testar conectividade com ping, tracert e Test-NetConnection
2. Consultar nomes com nslookup e dig
3. Observar portas abertas com netstat ou ss
4. Capturar uma requisição HTTP no Wireshark e identificar as camadas

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Matriz de serviços, protocolos, portas e riscos da NexaTech.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por qué a mesma porta pode ser necessária para o serviço e, ao mesmo tempo, representar um risco de segurança?

---

## Relação com o projeto

Dá nome e número aos serviços que a topologia da Aula 02 precisará transportar.

**O que fica em aberto:** Os protocolos definem o quê; falta decidir em qual hardware e com qual grau de virtualização isso rodará.

**Impacto de negócio:** Uma matriz de portas correta reduz indisponibilidade e exposição desnecessária.


## Próxima aula

**Aula 04 - Hardware de servidor, armazenamento e virtualização.** Com o laboratório pronto, é preciso um plano de implantação para não configurar tudo de forma desordenada.

---

> Voltar para o [índice do Bloco 1](../README.md).
