# Senac Tech - Monorepo de UCs

Repositório único para organizar todas as **Unidades Curriculares (UCs)** ministradas no curso técnico do Senac.

Cada UC é autocontida em uma pasta dentro de `ucs/`, com o seu próprio README, plano de aulas, apresentações, atividades, laboratório, questionários e bibliografia.

---

## Índice de UCs

| UC | Tema | Carga | Status | Material |
| :---: | :--- | :---: | :--- | :--- |
| **UC7** | Planejar e executar a instalação, a configuração e o monitoramento de sistemas operacionais de redes locais (servidores) | 96 h | Material completo; laboratório em validação | [Abrir UC7](ucs/uc7/README.md) |

> Novas UCs serão adicionadas em `ucs/<ucN>/` e registradas em [`ucs/README.md`](ucs/README.md).

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
    uc7/
      README.md                # guia da UC7
      requirements.txt
      AGENTS.md                # memória de trabalho da UC7 (local)
      .context.md              # contexto pedagógico da UC7 (local)
      aulas/
        README.md
        bloco1/ ... bloco4/
        projeto-integrador/
      docs/
        00_ementa.md
        01_timeline-engenharia.md
        02_resumos.md
        03_git.md
        04_plano-de-aulas.md
        05_materiais-complementares.md
        06_tutorial-laboratorio-virtual.md
      laboratorio_virtual/
        Vagrantfile
        README.md
        provision/
      questionarios/
        README.md
```

---

## Como navegar

1. Abra o [índice de UCs](ucs/README.md).
2. Escolha a UC desejada.
3. Leia o `README.md` da UC.
4. Use o plano de aulas da UC (`docs/04_plano-de-aulas.md`).
5. Abra as apresentações, atividades e roteiros de laboratório de cada aula.

---

## UC7 em destaque

| Recurso | Link |
| :--- | :--- |
| Guia da UC | [`ucs/uc7/README.md`](ucs/uc7/README.md) |
| Ementa | [`ucs/uc7/docs/00_ementa.md`](ucs/uc7/docs/00_ementa.md) |
| Plano de aulas | [`ucs/uc7/docs/04_plano-de-aulas.md`](ucs/uc7/docs/04_plano-de-aulas.md) |
| Projeto integrador | [`ucs/uc7/aulas/projeto-integrador/README.md`](ucs/uc7/aulas/projeto-integrador/README.md) |
| Laboratório Vagrant + VirtualBox | [`ucs/uc7/laboratorio_virtual/README.md`](ucs/uc7/laboratorio_virtual/README.md) |
| Primeira aula | [`ucs/uc7/aulas/bloco1/aula01/README.md`](ucs/uc7/aulas/bloco1/aula01/README.md) |

A UC7 está organizada em **24 aulas de 4 h**, divididas em quatro blocos:

1. Fundamentos e Planejamento
2. Windows Server
3. Linux Server e Segurança
4. Monitoramento, Nuvem, Governança e Projeto

---

## Convenções do monorepo

- Cada UC fica em `ucs/<ucN>/` e deve ser autocontida.
- Cada UC tem o seu próprio `README.md`, `docs/`, `aulas/`, `laboratorio_virtual/` e `questionarios/`, quando aplicável.
- Arquivos compartilhados por duas ou mais UCs podem ir para a raiz ou para uma pasta comum, mas isso deve ser exceção.
- Cada UC mantém o seu próprio `requirements.txt`, se precisar de dependências.
- O [`ucs/README.md`](ucs/README.md) é o índice oficial de UCs.
- Ao criar uma UC, atualize também este README e o índice de UCs.
- Nunca versionar senhas, chaves, ISOs, exports de VM ou dados reais de alunos.
- Validar links relativos e codificação UTF-8 antes de finalizar uma entrega.

---

## Como adicionar uma nova UC

1. Criar `ucs/<ucN>/`.
2. Criar o `README.md` da UC com identificação, carga horária, ementa, organização e links.
3. Criar `docs/` com a ementa, o plano de aulas e os materiais complementares.
4. Criar `aulas/` com a estrutura por blocos e aulas.
5. Criar `laboratorio_virtual/` com Vagrant + VirtualBox, se a UC tiver prática.
6. Criar `questionarios/` e `projeto-integrador/`, se aplicável.
7. Registrar a UC em [`ucs/README.md`](ucs/README.md) e neste README.
8. Criar o `AGENTS.md` e o `.context.md` da UC com as decisões pedagógicas e técnicas.

---

## Status geral

- **UC7:** material completo, com 24 aulas, 24 apresentações HTML, 24 atividades, 24 roteiros de laboratório e laboratório Vagrant + VirtualBox. Falta validar o laboratório no computador do professor.
- **Próximas UCs:** a estrutura do monorepo já está pronta para recebê-las.

---

## Documentação compartilhada

A documentação específica de cada UC fica dentro da própria UC. Documentos verdadeiramente transversais podem ser criados na raiz em `docs/`, quando necessário.

---

> Para detalhes da UC7, comece por [`ucs/uc7/README.md`](ucs/uc7/README.md).
