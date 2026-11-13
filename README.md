# Senac Tech - Monorepo de UCs

Repositório único para organizar todas as **Unidades Curriculares (UCs)** ministradas no curso técnico do Senac.

Cada UC é autocontida em uma pasta dentro de `ucs/`, com o seu próprio README, plano de aulas, apresentações, atividades, laboratório, questionários e bibliografia.

---

## Índice de UCs

| UC | Curso | Tema | Carga | Status | Material |
| :---: | :--- | :--- | :---: | :--- | :--- |
| **UC7** | Técnico em Informática | Planejar e executar a instalação, a configuração e o monitoramento de sistemas operacionais de redes locais (servidores) | 96 h | Material completo (32 aulas de 3 h, serviços espelhados Windows/Linux e pfSense); laboratório VirtualBox e aplicação de teste | [Abrir UC7](ucs/tecnico-em-informatica/uc7/README.md) |
| **UC1** | Técnico em Inteligência Artificial | Introdução a Arquitetura de Computadores | 63 h | Migrada do repositório `senac-tecnico-ia`; em validação | [Abrir UC1](ucs/tecnico-em-inteligencia-artificial/uc1/README.md) |

> Novas UCs serão adicionadas em `ucs/<curso>/<ucN>/` e registradas em [`ucs/README.md`](ucs/README.md).

---

## Estrutura do monorepo

```text
senactech/
  README.md                    # este índice geral
  AGENTS.md                    # convenções do monorepo (local)
  .context.md                  # contexto do monorepo (local)
  .gitignore
  .gitattributes
  ucs/
    README.md                  # índice de UCs
    tecnico-em-informatica/
      uc7/
        README.md              # guia da UC7
        requirements.txt
        AGENTS.md              # memória de trabalho da UC7 (local)
        .context.md            # contexto pedagógico da UC7 (local)
        aulas/
          README.md
          bloco1/ ... bloco5/
          projeto-integrador/
        extras/
          README.md
          computacao-em-nuvem/
        docs/
          01_timeline-engenharia.md
          02_resumos.md
          03_git.md
          04_plano-de-aulas.md
          05_materiais-complementares.md
          06_tutorial-laboratorio-virtual.md
        laboratorio_virtual/
          README.md
        questionarios/
          README.md
    tecnico-em-inteligencia-artificial/
      uc1/
        README.md
        requirements.txt
        AGENTS.md
        .context.md
        aulas/
        docs/
        questionarios/
```

---

## Como navegar

1. Abra o [índice de UCs](ucs/README.md).
2. Escolha a UC desejada.
3. Leia o `README.md` da UC.
4. Use o plano de aulas da UC (`docs/04_plano-de-aulas.md`).
5. Abra as apresentações, atividades e roteiros de laboratório de cada aula.

---

## UCs em destaque

### UC7 - Sistemas Operacionais de Redes Locais (Servidores) — Técnico em Informática

| Recurso | Link |
| :--- | :--- |
| Guia da UC | [`ucs/tecnico-em-informatica/uc7/README.md`](ucs/tecnico-em-informatica/uc7/README.md) |
| Plano de aulas | [`ucs/tecnico-em-informatica/uc7/docs/04_plano-de-aulas.md`](ucs/tecnico-em-informatica/uc7/docs/04_plano-de-aulas.md) |
| Projeto integrador | [`ucs/tecnico-em-informatica/uc7/aulas/projeto-integrador/README.md`](ucs/tecnico-em-informatica/uc7/aulas/projeto-integrador/README.md) |
| Laboratório VirtualBox | [`ucs/tecnico-em-informatica/uc7/laboratorio_virtual/README.md`](ucs/tecnico-em-informatica/uc7/laboratorio_virtual/README.md) |
| Primeira aula | [`ucs/tecnico-em-informatica/uc7/aulas/bloco1/aula01/README.md`](ucs/tecnico-em-informatica/uc7/aulas/bloco1/aula01/README.md) |

A UC7 está organizada em **32 aulas de 3 h**, divididas em cinco blocos:

1. Fundamentos e Planejamento
2. Windows Server
3. Redes, Roteamento e Firewall (pfSense)
4. Linux Server e Segurança
5. Operação, Monitoramento e Projeto

### UC1 - Introdução a Arquitetura de Computadores — Técnico em Inteligência Artificial

| Recurso | Link |
| :--- | :--- |
| Guia da UC | [`ucs/tecnico-em-inteligencia-artificial/uc1/README.md`](ucs/tecnico-em-inteligencia-artificial/uc1/README.md) |
| Timeline de engenharia | [`ucs/tecnico-em-inteligencia-artificial/uc1/docs/01_timeline-engenharia.md`](ucs/tecnico-em-inteligencia-artificial/uc1/docs/01_timeline-engenharia.md) |
| Resumos | [`ucs/tecnico-em-inteligencia-artificial/uc1/docs/02_resumos.md`](ucs/tecnico-em-inteligencia-artificial/uc1/docs/02_resumos.md) |
| Índice de aulas | [`ucs/tecnico-em-inteligencia-artificial/uc1/aulas/README.md`](ucs/tecnico-em-inteligencia-artificial/uc1/aulas/README.md) |
| Projeto integrador | [`ucs/tecnico-em-inteligencia-artificial/uc1/aulas/projeto-integrador/README.md`](ucs/tecnico-em-inteligencia-artificial/uc1/aulas/projeto-integrador/README.md) |
| Questionários | [`ucs/tecnico-em-inteligencia-artificial/uc1/questionarios/README.md`](ucs/tecnico-em-inteligencia-artificial/uc1/questionarios/README.md) |
| Materiais complementares | [`ucs/tecnico-em-inteligencia-artificial/uc1/docs/05_materiais-complementares.md`](ucs/tecnico-em-inteligencia-artificial/uc1/docs/05_materiais-complementares.md) |

Material migrado do repositório `senac-tecnico-ia`: **24 aulas**, notebooks Colab, laboratórios Windows/Linux e projeto integrador de pesquisa.

---

## Convenções do monorepo

- Cada UC fica em `ucs/<curso>/<ucN>/` e deve ser autocontida.
- Cada UC tem o seu próprio `README.md`, `docs/`, `aulas/`, `laboratorio_virtual/` e `questionarios/`, quando aplicável.
- Arquivos compartilhados por duas ou mais UCs podem ir para a raiz ou para uma pasta comum, mas isso deve ser exceção.
- Cada UC mantém o seu próprio `requirements.txt`, se precisar de dependências.
- O [`ucs/README.md`](ucs/README.md) é o índice oficial de UCs.
- Ao criar uma UC, atualize também este README e o índice de UCs.
- Nunca versionar senhas, chaves, ISOs, exports de VM ou dados reais de alunos.
- Validar links relativos e codificação UTF-8 antes de finalizar uma entrega.

---

## Como adicionar uma nova UC

1. Criar `ucs/<curso>/<ucN>/`.
2. Criar o `README.md` da UC com identificação, carga horária, organização e links.
3. Criar `docs/` com o plano de aulas e os materiais complementares.
4. Criar `aulas/` com a estrutura por blocos e aulas.
5. Criar `laboratorio_virtual/` com as instruções do laboratório (VirtualBox manual, quando aplicável).
6. Criar `questionarios/` e `projeto-integrador/`, se aplicável.
7. Registrar a UC em [`ucs/README.md`](ucs/README.md) e neste README.
8. Criar o `AGENTS.md` e o `.context.md` da UC com as decisões pedagógicas e técnicas.

---

## Status geral

- **UC7:** do Técnico em Informática, material completo, com 32 aulas de 3 h, 32 apresentações HTML, 32 atividades, 32 roteiros de laboratório, serviços espelhados (DNS/DHCP/web em Windows e Linux), aplicação Apache/PHP com banco, pfSense e laboratório VirtualBox manual. Conteúdo de nuvem em `extras/`. Aplicação de teste e scripts de deploy disponíveis.
- **UC1:** conteúdo migrado do repositório `senac-tecnico-ia`, com 24 aulas, notebooks Colab, laboratórios e projeto integrador. É a UC1 do curso Técnico em Inteligência Artificial, com carga horária de 63 h. Falta revisar a integração ao monorepo.
- **Próximas UCs:** a estrutura do monorepo já está pronta para recebê-las.

---

## Documentação compartilhada

A documentação específica de cada UC fica dentro da própria UC. Documentos verdadeiramente transversais podem ser criados na raiz em `docs/`, quando necessário.

---

> Para detalhes da UC7, comece por [`ucs/tecnico-em-informatica/uc7/README.md`](ucs/tecnico-em-informatica/uc7/README.md).
>
> Para detalhes da UC1, comece por [`ucs/tecnico-em-inteligencia-artificial/uc1/README.md`](ucs/tecnico-em-inteligencia-artificial/uc1/README.md).
