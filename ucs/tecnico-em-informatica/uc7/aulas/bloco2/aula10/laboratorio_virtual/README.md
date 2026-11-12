# Laboratório Virtual - Aula 10: Compartilhamento de arquivos e permissões

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Matriz de permissões e relatório de testes de acesso.

---

## Objetivo

Configurar compartilhamentos SMB com permissões, quotas, versionamento e backup.

## VMs desta aula

DC01 e CLI01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Criar pastas por setor e compartilhar via SMB
2. Aplicar permissões NTFS usando grupos
3. Configurar quotas e cópias de sombra
4. Mapear unidades e testar acessos permitidos e negados

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up dc01 cli01
vagrant winrm dc01 -c "hostname"
vagrant winrm cli01 -c "ipconfig /all"
vagrant rdp dc01
vagrant snapshot save dc01 antes-ad
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Entrega o serviço que mais afeta o dia a dia dos usuários da NexaTech.

**O que fica em aberto:** As permissões estão corretas, mas precisam ser aplicadas de forma padronizada em todos os computadores.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula10.html) e a [atividade](../atividade.md).
