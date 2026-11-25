# Atividade - Aula 14: File Server Avançado com FSRM e Cópias de Sombra

**Entrega:** Relatório de implementação de Cotas de Disco (FSRM), Bloqueio de Extensões e Teste de Restauração de Arquivo via Cópias de Sombra.  
**Formato:** Individual ou em dupla  
**Carga:** 3 horas  

---

## Etapas da Atividade

1. **Instalação do FSRM:**
   - Adicionar função *File Server Resource Manager* no Server Manager do Windows Server.
2. **Configuração de Quota:**
   - Definir cota rígida de 500 MB para a pasta `Financeiro`.
   - Tentar copiar um arquivo maior que 500 MB a partir do cliente e comprovar o bloqueio pelo sistema operacional.
3. **Triagem de Arquivos (File Screening):**
   - Bloquear arquivos de grupo *Audio and Video Files* na pasta `Secretaria`.
   - Tentar salvar um arquivo `.mp3` ou `.mp4` e comprovar o acesso negado.
4. **Cópias de Sombra (VSS):**
   - Botão direito no disco `D:` -> **Configure Shadow Copies** -> Habilitar.
   - Criar um arquivo `teste_vss.txt`, forçar a criação de uma cópia de sombra, alterar ou apagar o arquivo.
   - Pelo cliente Windows, abrir as propriedades da pasta -> aba **Versões Anteriores** e restaurar o arquivo apagado.
