# Atividade - Aula 02: O servidor na rede local e a UC7

**Entrega:** Servidor de arquivos básico em funcionamento (pasta compartilhada na FS01 acessível pelo CLI01 e pelo CLI02), com ficha de configuração e evidências.  
**Formato:** individual ou em dupla, conforme orientação do docente  
**Peso sugerido:** atividade do bloco

---

## Objetivo

Reconhecer o papel dos servidores em uma rede local, os principais tipos de serviço e criar um servidor de arquivos básico.

## Contexto

A NexaTech Soluções Digitais tem 45 colaboradores em dois andares. Hoje os arquivos ficam em um computador comum, não há autenticação centralizada e as falhas de rede são resolvidas no improviso. A direção contratou você para planejar, instalar, configurar e monitorar a nova infraestrutura de servidores.

## Dores identificadas na NexaTech

| Dor | Como aparece hoje | Exemplo de solução |
| :--- | :--- | :--- |
| Arquivos espalhados | Todos usam um PC comum; há cópias duplicadas, versões perdidas e backup manual. | Servidor de arquivos com pasta compartilhada, permissões e rotina de backup. |
| Sem autenticação central | Cada estação tem conta local; as senhas se repetem e ninguém sabe quem acessou o quê. | Active Directory com usuários e grupos únicos para toda a empresa. |
| Rede resolvida no improviso | As falhas são corrigidas sem padrão e sem registro, então o problema volta. | Topologia documentada, plano de IPs e DNS/DHCP padronizados. |
| Sem monitoramento | A equipe só descobre a queda quando o usuário reclama. | Monitoramento de disponibilidade, disco e logs, com alertas. |

## Classificação dos serviços

| Prioridade | Serviços | Critério |
| :--- | :--- | :--- |
| Essencial | Autenticação, arquivos, DNS e DHCP | Sem eles a operação da empresa para. |
| Importante | Backup, impressão e monitoramento | Afetam produtividade e continuidade, mas há contorno temporário. |
| Opcional | Web interna, banco da aplicação e nuvem | Agregam valor, mas podem entrar em uma etapa posterior. |

## O que deve ser entregue

Servidor de arquivos básico em funcionamento: pasta compartilhada na FS01 (via SMB) acessível pelo CLI01 e pelo CLI02, com ficha de configuração e evidências. A ficha deve incluir também o diagnóstico inicial dos serviços que precisam ser centralizados.

## Etapas

1. Preencher a ficha com as quatro dores da NexaTech, o impacto de cada uma e a solução proposta
2. Classificar os serviços nas três prioridades, justificando cada escolha pelo impacto no negócio
3. Criar a VM FS01 com Windows 10 e adicioná-la à rede interna `rede-nexatech`
4. Configurar na FS01 o IP `192.168.10.102` e confirmar os IPs do CLI01 e do CLI02
5. Na FS01, criar a pasta `C:\Compartilhado` com um arquivo de teste
6. Compartilhar a pasta via SMB com o nome `nexatech`
7. Definir permissões de leitura e alteração para os usuários do laboratório
8. No CLI01 e no CLI02, acessar `\\192.168.10.102\nexatech`, abrir o arquivo e gravar um novo arquivo
9. Mapear a unidade `Z:` para o compartilhamento
10. Registrar prints e as saídas de `net share` e `net use`

## Evidências esperadas

- Ficha com as quatro dores, o impacto, a solução proposta e a classificação dos serviços.
- Print da pasta compartilhada e das permissões na FS01.
- Print do acesso e da gravação de arquivo pelo CLI01 e pelo CLI02.
- Saídas de comando de `net share` e `net use`.
- Registro das dificuldades encontradas e como foram resolvidas.

## Para refletir

Por que um simples compartilhamento de pasta já melhora o trabalho da equipe, mas ainda não é uma infraestrutura corporativa?

---

> Consulte o [guia da aula](README.md) e o [plano de aulas](../../../docs/04_plano-de-aulas.md).
