# Índice de UCs

Este diretório reúne todas as Unidades Curriculares do monorepo **senactech**.

Cada UC fica em uma pasta própria e é autocontida.

| UC | Tema | Carga | Status | Material |
| :---: | :--- | :---: | :--- | :--- |
| **UC7** | Planejar e executar a instalação, a configuração e o monitoramento de sistemas operacionais de redes locais (servidores) | 96 h | Material completo; laboratório em validação | [`uc7/README.md`](uc7/README.md) |

---

## Estrutura de uma UC

```text
ucs/<ucN>/
  README.md
  requirements.txt
  AGENTS.md
  .context.md
  aulas/
    README.md
    bloco1/ ...
    bloco2/ ...
    bloco3/ ...
    bloco4/ ...
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

> A estrutura pode variar conforme a UC. UCs sem prática de laboratório podem não ter `laboratorio_virtual/`; UCs sem projeto integrador podem não ter essa pasta.

---

## Convenções

- Nome da pasta: `ucN` (ex.: `uc7`, `uc8`) ou `ucN-slug` quando ajudar na identificação.
- O `README.md` da UC é a porta de entrada.
- O plano de aulas fica em `docs/04_plano-de-aulas.md`.
- Cada aula tem `README.md`, `atividade.md` e, quando aplicável, `apresentacao_aulaNN.html` e `laboratorio_virtual/README.md`.
- Cada UC tem o seu próprio `AGENTS.md` e `.context.md` para decisões locais.
- Ao adicionar uma UC, atualize este índice e o [README raiz](../README.md).

---

## Próximas UCs

As próximas UCs devem ser criadas em `ucs/<ucN>/` e registradas na tabela acima.

Sugestão de fluxo:

1. Criar a pasta da UC.
2. Copiar a estrutura de uma UC existente, se fizer sentido.
3. Adaptar ementa, plano de aulas, apresentações, atividades e laboratório.
4. Validar os links e as tabelas.
5. Atualizar os índices.

---

> Voltar para o [README do monorepo](../README.md).
