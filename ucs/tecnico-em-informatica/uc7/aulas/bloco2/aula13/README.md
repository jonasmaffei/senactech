# Aula 13 - DHCP no Windows Server

**Data sugerida:** 02/12/2026 (quarta-feira)
**Bloco:** 2 - Windows Server
**Carga:** 3 horas

---

## Objetivo

Configurar escopos, reservas e opções DHCP no Windows Server para entregar endereçamento à rede.

---

## Situação de aprendizagem

Os clientes precisam receber IP, gateway e DNS automaticamente; configurar tudo à mão não escala.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Plano de DHCP com escopo, exclusões, reservas e evidências de concessão. |
| [`apresentacao_aula13.html`](apresentacao_aula13.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Escopo, faixa e exclusões |
| Opções 003, 006 e 015 |
| Reservas e tempo de concessão |
| Autorização do DHCP no AD |
| Failover e boas práticas |
| Testes com ipconfig e logs |

### Ferramentas

DHCP Console, PowerShell, ipconfig

---

## Prática em laboratório

Criação do escopo DHCP da LAN da NexaTech.

1. Criar o escopo 192.168.10.100-200
2. Definir gateway e DNS nas opções
3. Reservar IPs para servidores e impressoras
4. Autorizar e ativar o escopo
5. Testar a concessão em um cliente

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Plano de DHCP com escopo, exclusões, reservas e evidências de concessão.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Quais riscos existem ao entregar um gateway ou DNS errado via DHCP?

---

## Relação com o projeto

Completa o serviço de endereçamento da NexaTech.

**O que fica em aberto:** Controlar o acesso aos dados compartilhados com permissões adequadas.

**Impacto de negócio:** Reduz trabalho manual e evita erros de configuração nos clientes.


## Próxima aula

**Aula 14 - Compartilhamento de arquivos, permissões e quotas.** Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.

---

> Voltar para o [índice do Bloco 2](../README.md).
