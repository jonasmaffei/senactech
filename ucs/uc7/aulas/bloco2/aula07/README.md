# Aula 07 - Instalação e configuração inicial do Windows Server

**Data sugerida:** 23/11/2026 (segunda-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 4 horas

---

## Objetivo

Instalar o Windows Server e executar a configuração inicial segura do servidor.

---

## Situação de aprendizagem

O primeiro servidor da NexaTech será o controlador de domínio e servidor de arquivos. A instalação precisa sair do padrão inseguro de fábrica e já nascer com nome, rede, atualizações e administração remota definidos.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Checklist de instalação preenchida com evidências e configurações do servidor. |
| [`apresentacao_aula07.html`](apresentacao_aula07.html) | Slides de conceito (abra no navegador) |
| [`laboratorio_virtual/`](laboratorio_virtual/README.md) | Roteiro prático com Vagrant + VirtualBox |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Edições Standard e Datacenter |
| Desktop Experience versus Server Core |
| Requisitos de hardware e virtualização |
| Instalação e configuração pós-instalação |
| Nome do host, fuso horário, rede estática e ativação |
| Funções e recursos do Windows Server |
| Windows Admin Center, RSAT e administração remota |
| Licenciamento e CALs |

### Ferramentas

VirtualBox/Hyper-V, ISO do Windows Server, Windows Admin Center

---

## Prática em laboratório

Instalação completa do Windows Server no laboratório virtual.

1. Instalar o Windows Server na VM do laboratório
2. Definir nome, IP estático, DNS e fuso horário
3. Executar atualizações e ativar o sistema
4. Instalar as funções iniciais e habilitar administração remota

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Checklist de instalação preenchida com evidências e configurações do servidor.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Por que Server Core é preferível em muitos servidores de produção, mesmo sendo menos visual?

---

## Relação com o projeto

Inicia o Bloco 2 instalando a base que receberá o Active Directory.

**O que fica em aberto:** Um servidor isolado não autentica ninguém; é preciso criar o domínio.

**Impacto de negócio:** Uma instalação padronizada reduz falhas e facilita suporte e auditoria.


## Próxima aula

**Aula 08 - Active Directory Domain Services.** O domínio precisa de DNS confiável e de endereçamento automático para os clientes.

---

> Voltar para o [índice do Bloco 2](../README.md).
