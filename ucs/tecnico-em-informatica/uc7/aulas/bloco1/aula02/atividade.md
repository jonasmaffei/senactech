# Atividade - Aula 02: O servidor na rede local e a UC7

**Entrega:** Servidor de arquivos básico em funcionamento (pasta compartilhada no CLI01 acessível pelo CLI02), com ficha de configuração e evidências.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e criar um servidor de arquivos básico.

## Contexto

A NexaTech Soluções Digitais tem 45 colaboradores em dois andares. Hoje os arquivos ficam em um computador comum, não há autenticação centralizada e as falhas de rede são resolvidas no improviso. A direção contratou você para planejar, instalar, configurar e monitorar a nova infraestrutura de servidores.

## O que deve ser entregue

Servidor de arquivos básico em funcionamento: pasta compartilhada no CLI01 (via SMB) acessível pelo CLI02, com ficha de configuração e evidências. A ficha deve incluir também o diagnóstico inicial dos serviços que precisam ser centralizados.

## Etapas

1. Inventariar as dores da NexaTech e classificar os serviços entre essenciais, importantes e opcionais
2. Ligar CLI01 e CLI02 e confirmar os IPs `192.168.10.100` e `192.168.10.101`
3. No CLI01, criar a pasta `C:\Compartilhado` com um arquivo de teste
4. Compartilhar a pasta via SMB com o nome `nexatech`
5. Definir permissões de leitura e alteração para os usuários do laboratório
6. No CLI02, acessar `\\192.168.10.100\nexatech`, abrir o arquivo e gravar um novo arquivo
7. Mapear a unidade `Z:` para o compartilhamento
8. Registrar prints e as saídas de `net share` e `net use`

## Evidências esperadas

- Ficha com o diagnóstico dos serviços e as decisões de configuração.
- Print da pasta compartilhada e das permissões no CLI01.
- Print do acesso e da gravação de arquivo pelo CLI02.
- Saídas de comando de `net share` e `net use`.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Por que um simples compartilhamento de pasta já melhora o trabalho da equipe, mas ainda não é uma infraestrutura corporativa?

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
