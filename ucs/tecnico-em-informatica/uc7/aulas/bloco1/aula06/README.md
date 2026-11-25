# Aula 06 - Tipos de Servidores

**Data sugerida:** 23/11/2026 (segunda-feira)
**Bloco:** 1 - Fundamentos e Planejamento
**Carga:** 3 horas

---

## Objetivo

Relacionar portas, protocolos e os principais tipos de servidores corporativos: Arquivos, AD DS, DNS, DHCP, Web e Banco de Dados.

---

## Situação de aprendizagem

O hardware e o RAID já foram definidos. Agora a equipe precisa transformar a especificação em VMs com recursos compatíveis com o papel de cada servidor.

## Dor da NexaTech e solução

| Dor | Impacto | Exemplo de solução | Prioridade |
| :--- | :--- | :--- | :--- |
| A especificação do servidor está no papel, mas ainda não existe ambiente virtual para instalar os serviços. | Sem as VMs dimensionadas, as aulas de Windows Server e Linux não têm onde instalar os serviços. | Criar DC01, APP01 e DB01 no VirtualBox com vCPU, RAM, discos e rede interna conforme o papel de cada servidor. | Essencial |

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade. |
| [`apresentacao_aula06.html`](apresentacao_aula06.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Dimensionamento de vCPU, memória e disco por papel do servidor |
| Adaptadores NAT e rede interna em cada VM |
| Alocação dinâmica de disco e segundo disco de dados |
| Snapshot baseline após instalar o sistema e validar a rede |
| Documentação de nome, recursos, IP e função de cada VM |
| Ajuste dos recursos ao host e limites de memória |

### Ferramentas

VirtualBox 7+, ISO do sistema e prompt do host

---

## Prática em laboratório

Criação e dimensionamento das VMs de servidor, com os recursos ajustados ao papel de cada uma.

1. Criar as VMs DC01, APP01 e DB01
2. Destinar 2 vCPUs e memória conforme o papel (ajustando ao host)
3. Criar os discos virtuais: 60 GB (DC01) e 50 GB (APP01 e DB01)
4. Adicionar adaptador NAT e adaptador de rede interna em cada VM
5. Iniciar as VMs, testar a rede e tirar o snapshot baseline

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Ficha das VMs DC01, APP01 e DB01 (CPU, memória, disco e redes) com prints do VirtualBox e teste de conectividade.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Quando vale a pena virtualizar e quando o recurso do host vira o gargalo?

---

## Relação com o projeto

Cria a plataforma que hospedará todos os servidores da NexaTech.

**O que fica em aberto:** Validar a comunicação entre as VMs e consolidar o plano diretor da rede.

**Impacto de negócio:** Reduz custo de hardware e permite errar sem comprometer o computador real.


## Próxima aula

**Aula 07 - Planejamento, laboratório e plano diretor da rede.** Consolidar o plano de instalação e o plano diretor da rede, com o laboratório VirtualBox pronto e validado.

---

> Voltar para o [índice do Bloco 1](../README.md).
