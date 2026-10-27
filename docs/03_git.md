# Git e GitHub - Guia Rápido

## Clonar o repositório

```bash
git clone https://github.com/jonasmaffei/senactech.git
cd senactech
```

## Atualizar antes da aula

```bash
git pull origin main
```

## Fluxo básico de trabalho

```bash
git status
git add .
git commit -m "Aula 07: instalacao do Windows Server"
git push origin main
```

## Boas práticas

- Um commit por entrega ou mudança relevante.
- Mensagens claras: `Aula NN: o que foi feito`.
- Nunca commitar senhas, chaves, arquivos `.iso` ou exports de VM.
- Atualizar a documentação junto com a configuração.
- Conferir `git status` antes de cada commit.

## Estrutura de branches sugerida

```text
main        -> material oficial da UC
aulaNN      -> rascunhos e experimentos de uma aula
projeto     -> evolucao do projeto integrador
```

> Para o dia a dia em sala, trabalhar direto na `main` e aceitável. Use branches quando a mudança for grande ou arriscada.
