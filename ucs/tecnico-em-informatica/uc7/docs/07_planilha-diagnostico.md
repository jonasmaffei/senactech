# Planilha de diagnóstico - modelo de referência

> Modelo para registrar as dores da organização, o impacto de cada uma, a solução proposta, a prioridade dos serviços e as evidências do projeto integrador. O exemplo original usa a NexaTech, cenário das aulas; no projeto, adapte as linhas ao tema escolhido pelo estudante.

**Arquivo:** [`07_planilha-diagnostico-nexatech.xlsx`](07_planilha-diagnostico-nexatech.xlsx)

---

## Para que serve

A planilha transforma o diagnóstico em um documento verificável. Cada linha relaciona uma dor da organização a uma solução concreta e à evidência que comprova a entrega. Ela é o ponto de partida do documento `01_diagnostico.md` do projeto integrador.

## Abas da planilha

| Aba | Conteúdo |
| :--- | :--- |
| **Instruções** | Explicação de cada coluna e um exemplo de linha preenchida. |
| **Dores e Soluções** | Uma linha por dor, com impacto, solução, serviço relacionado, prioridade e evidência. Exemplos já preenchidos para as 32 aulas. |
| **Classificação de Serviços** | Modelo de classificação em essencial, importante e opcional, com justificativa. |
| **Modelo em branco** | Cabeçalho e linhas vazias para o grupo preencher com os próprios dados. |
| **Evidências** | Checklist do que deve ser registrado em cada aula, com status. |

## Como preencher

| Coluna | O que escrever |
| :--- | :--- |
| **Aula** | Número da aula em que a dor foi trabalhada. |
| **Bloco** | Bloco da UC (1 a 5). |
| **Tema da aula** | Título da aula, igual ao plano de aulas. |
| **Dor da NexaTech** | Problema objetivo, em uma frase. Evite "melhorar a rede". |
| **Impacto no negócio** | O que a dor causa: perda de dados, retrabalho, indisponibilidade, risco de segurança ou custo. |
| **Exemplo de solução** | O que será feito, onde e com qual tecnologia. |
| **Serviço relacionado** | Autenticação, arquivos, DNS, DHCP, web, banco, firewall, backup, monitoramento etc. |
| **Prioridade** | Essencial, importante ou opcional. |
| **Evidência esperada** | Print, saída de comando, diagrama, planilha, relatório ou teste que comprova a entrega. |
| **Status** | Pendente, em andamento ou concluído. Só marque concluído quando a evidência existir. |

## Exemplo preenchido

| Aula | Dor | Impacto | Exemplo de solução | Serviço | Prioridade | Evidência |
| :---: | :--- | :--- | :--- | :--- | :--- | :--- |
| 02 | Arquivos espalhados em um PC comum. | Cópias duplicadas, versões perdidas e backup manual colocam os documentos em risco. | Criar um servidor de arquivos básico na FS01, com pasta compartilhada via SMB, permissões e rotina de backup. | Arquivos | Essencial | Print da pasta compartilhada, do acesso pelo CLI01 e pelo CLI02 e saída de `net share`. |
| 09 | Falta de autenticação central. | Cada estação tem conta local, as senhas se repetem e ninguém sabe quem acessou o quê. | Criar o domínio `nexatech.local` e promover o DC01 a controlador de domínio. | Autenticação | Essencial | Print da promoção do DC01 e da verificação do domínio. |
| 12 | Clientes não encontram o controlador de domínio pelo nome. | O domínio falha de forma intermitente e os serviços ficam inacessíveis pelo nome. | Configurar zonas DNS direta e reversa integradas ao Active Directory. | DNS | Essencial | Saída de `nslookup` e prints das zonas. |
| 29 | Arquivos compartilhados podem ser apagados ou perdidos em uma falha. | A empresa perde contratos e documentos fiscais sem recuperação. | Definir rotina de backup, testar a restauração e documentar a continuidade. | Backup | Essencial | Plano de backup e print do teste de restauração. |

## Classificação dos serviços

| Prioridade | Serviços | Critério |
| :--- | :--- | :--- |
| **Essencial** | Autenticação, arquivos, DNS, DHCP, firewall e virtualização | Sem eles a operação para ou a rede fica exposta. |
| **Importante** | Backup, impressão e monitoramento | Afetam produtividade e continuidade, mas há contorno temporário. |
| **Opcional** | Web interna, banco da aplicação e nuvem | Agregam valor, mas podem entrar em uma etapa posterior. |

## Boas práticas

1. Uma dor por linha. Se a aula tiver mais de uma, repita o número da aula.
2. A solução deve citar a tecnologia e o local: servidor, serviço e configuração.
3. A evidência deve ser verificável por outra pessoa.
4. A prioridade precisa de justificativa; não classifique tudo como essencial.
5. Atualize o status ao final de cada etapa, junto com o portfólio individual do projeto.

---

> Consulte também o [plano de aulas](04_plano-de-aulas.md) e o [projeto integrador](../aulas/projeto-integrador/README.md).
