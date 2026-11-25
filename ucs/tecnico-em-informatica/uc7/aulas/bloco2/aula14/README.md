# Aula 14 - File Server Avançado: Quotas (FSRM), Cópias de Sombra (VSS) e Auditoria

**Bloco:** 2 - Windows Server  
**Carga:** 3 horas (1 encontro)  

---

## Objetivo

Evoluir a estrutura de compartilhamento criada na unidade D: nas Aulas 07 e 08, implantando a função corporativa **File Server Resource Manager (FSRM)** para controle de cotas de disco, triagem de arquivos (bloqueio de .mp3/.exe) e **Cópias de Sombra (Shadow Copies)** para restauração de versões anteriores sem necessidade de backup.

---

## Contexto de Negócio

A NexaTech já possui as pastas setoriais funcionando no disco `D:\Compartilhamento`. Porém, os usuários estão consumindo todo o espaço com arquivos pessoais (.mp4/.iso) e acidentalmente apagando planilhas da empresa. A TI precisa impor limites e oferecer autorrecuperação de arquivos.

---

## Conteúdo Programático

1. **Reaproveitamento da Estrutura das Aulas 07 e 08:**
   - Manutenção das pastas `Financeiro`, `Gerencia` e `Secretaria` na unidade `D:`.
2. **File Server Resource Manager (FSRM):**
   - Instalação da Role Service no Server Manager.
   - **Hard Quotas (Cotas Rígidas):** Impede a gravação assim que atingir o limite (ex: 500 MB por setor).
   - **Soft Quotas (Cotas Suaves):** Apenas envia alertas para monitoramento.
   - **File Screening (Triagem de Arquivos):** Bloqueio de arquivos de áudio, vídeo ou executáveis em pastas corporativas.
3. **Cópias de Sombra (Volume Shadow Copy Service - VSS):**
   - Ativação do VSS no volume `D:`.
   - Agendamento de snapshots de volume (ex: 07:00 e 12:00).
   - Teste de exclusão de arquivo pelo cliente e restauração através da aba **Versões Anteriores (Previous Versions)** no Windows Explorer.

---

## Prática de Laboratório

1. Habilitar a função **File Server Resource Manager** no DC01.
2. Criar um modelo de cota rígida de 500 MB na pasta `D:\Compartilhamento\Financeiro`.
3. Criar uma regra de triagem de arquivos impedindo gravação de arquivos de áudio/vídeo.
4. Habilitar Cópias de Sombra no volume `D:`.
5. Fazer o teste de recuperação a partir de uma VM cliente.
