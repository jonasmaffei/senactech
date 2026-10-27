# Aula 11 - GPOs e políticas de segurança

**Data sugerida:** 27/11/2026 (sexta-feira)  
**Bloco:** 2 - Windows Server  
**Carga:** 4 horas

---

## Objetivo

Aplicar políticas de grupo para padronizar segurança e configurações nos clientes do domínio.

---

## Situação de aprendizagem

A auditoria interna apontou senhas fracas, telas que não bloqueiam e unidades de rede mapeadas manualmente. A equipe precisa padronizar isso sem visitar cada computador.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`atividade.md`](atividade.md) | Entrega da aula: Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação. |
| [`apresentacao_aula11.html`](apresentacao_aula11.html) | Slides de conceito (abra no navegador) |
| `laboratorio_virtual/` | Roteiro prático no VirtualBox (a produzir) |
| `scripts/` | Automação e apoio (a produzir, quando necessário) |

### Tópicos

| Tópico |
| :--- |
| Objetos de GPO, escopo e herança |
| Ordem de precedência e filtragem de segurança |
| Política de senha e bloqueio de conta |
| Firewall, atualizações e restrições de software |
| Mapeamento de unidades e impressoras |
| Auditoria e diagnóstico com gpresult e RSOP |

### Ferramentas

Group Policy Management Console, gpresult, RSOP

---

## Prática em laboratório

GPOs aplicadas em OUs específicas e validadas em clientes.

1. Criar GPO de política de senha e bloqueio de tela
2. Mapear unidades de rede e impressoras por setor
3. Aplicar configurações de firewall e atualizações
4. Validar com gpresult e testar com usuários de OUs diferentes

> Registre evidências: prints, saídas de comando, configurações e testes. Elas serão exigidas no projeto integrador.

---

## Atividade

- **Entrega:** Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação.
- **Enunciado:** [`atividade.md`](atividade.md)
- **Pergunta de reflexão:** Como a herança e a precedência de GPOs podem fazer uma política funcionar em um setor e falhar em outro?

---

## Relação com o projeto

Aplica em escala as permissões e padrões definidos nas aulas anteriores.

**O que fica em aberto:** O ambiente interno está padronizado; falta publicar serviços e permitir administração remota segura.

**Impacto de negócio:** Políticas centralizadas reduzem falhas humanas e custo de suporte.


## Próxima aula

**Aula 12 - Serviços web, acesso remoto e administração.** Serviços publicados precisam de rotinas automáticas de verificação e monitoramento.

---

> Voltar para o [índice do Bloco 2](../README.md).
