# Laboratório VirtualBox - Aula 29: Backup, continuidade e recuperação de dados

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano de backup e continuidade com evidências de restauração e RPO/RTO.

---

## Objetivo

Definir e testar a rotina de backup, restauração e continuidade dos dados do ambiente.

## VMs desta aula

DC01 (arquivos compartilhados), APP01 (rotina de backup) e DB01 (banco de dados). Mantenha o snapshot da aula anterior.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Definir o que será copiado (pastas compartilhadas no Windows e dados do Linux)
2. Criar uma rotina de backup com rsync
3. Incluir o banco de dados do DB01 na rotina de backup
4. Agendar a rotina com systemd timer
5. Simular exclusão de arquivo e restaurar a versão anterior
6. Definir RPO/RTO e documentar a retenção

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote o que foi copiado, a retenção e o tempo de restauração.
- Teste a restauração de um arquivo apagado.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
# Exemplo de cópia com rsync
rsync -av /origem/ /destino/

# Exemplo de dump do banco da aplicacao (executar no DB01)
mysqldump -u root nexatech_app > /root/backups/nexatech_app_$(date +%F).sql

# Exemplo de agendamento com systemd timer
systemctl list-timers
```

## Observações

- O compartilhamento de arquivos da empresa fica no Windows Server (DC01).
- A rotina de backup deve cobrir os dados compartilhados e os arquivos do Linux.

## Relação com o projeto

Protege os dados compartilhados no Windows Server e os serviços Linux.

**O que fica em aberto:** Validar o ambiente integrado e diagnosticar falhas de ponta a ponta.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula29.html) e a [atividade](../atividade.md).
