# Aula 06 - Laboratório virtual e plano diretor da rede

**Data sugerida:** 19/11/2026 (quinta-feira)  
**Bloco:** 1 - Fundamentos e Planejamento  
**Carga:** 4 horas

---

## Objetivo

Montar o laboratório virtual e consolidar o plano diretor da rede da NexaTech.

---

## Situação de aprendizagem

Chegou o momento de provar que o plano funciona. A equipe precisa deixar as VMs prontas, a rede interna respondendo e o documento consolidado para a primeira entrega à direção.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Plano Diretor da Rede NexaTech, com topologia, IPs, serviços, cronograma e riscos. |
| [`apresentacao_aula06.html`](apresentacao_aula06.html) | Slides de conceito (abra no navegador) |
| `laboratorio_virtual/` | Roteiro prático no VirtualBox (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Revisão dos blocos anteriores |
| Configuração de rede interna e host-only |
| Endereçamento estático do laboratório |
| Snapshots e linha de base |
| Organização de pastas e versionamento da documentação |
| Apresentação do plano diretor |

### Ferramentas

VirtualBox ou Hyper-V, Git, editor de texto

---

## Prática em laboratório

Laboratório virtual funcional com Windows Server e Ubuntu Server.

1. Criar a rede interna rede-nexatech em 192.168.10.0/24
2. Configurar IP estático nas VMs e testar conectividade
3. Tirar snapshot limpo de cada VM
4. Consolidar o plano diretor em um único documento

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Plano Diretor da Rede NexaTech, com topologia, IPs, serviços, cronograma e riscos.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** O que precisa estar documentado para que outra pessoa consiga continuar o projeto sem perguntar nada?

---

## Relação com o projeto

Fecha o Bloco 1 com o laboratório pronto e o plano aprovado para a instalação dos serviços.

**O que fica em aberto:** Com a base pronta, qual sistema operacional será instalado e configurado primeiro?

**Impacto de negócio:** Um plano diretor permite que a empresa cresça sem refazer a rede a cada novo serviço.


## Próxima aula

**Aula 07 - Instalação e configuração inicial do Windows Server.** Um servidor isolado não autentica ninguém; é preciso criar o domínio.

---

> Voltar para o [índice do Bloco 1](../README.md).
