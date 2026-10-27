# Laboratório Virtual - Aula 12: Serviços web, acesso remoto e administração

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Catálogo de serviços web e checklist de acesso remoto seguro.

---

## Objetivo

Publicar serviços web e configurar administração remota segura no Windows Server.

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

1. Publicar uma intranet simples no IIS
2. Configurar HTTPS com certificado de teste
3. Restringir RDP por firewall e testar acesso
4. Administrar o servidor pelo Windows Admin Center ou PowerShell Remoting

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

Amplia o servidor de arquivos e domínio para serviços de comunicação e administração.

**O que fica em aberto:** Serviços publicados precisam de rotinas automáticas de verificação e monitoramento.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula12.html) e a [atividade](../atividade.md).
