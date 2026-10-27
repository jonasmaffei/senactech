# Laboratório Virtual - Aula 11: GPOs e políticas de segurança

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Catálogo de GPOs com objetivo, escopo, configuração e evidência de aplicação.

---

## Objetivo

Aplicar políticas de grupo para padronizar segurança e configurações nos clientes do domínio.

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

1. Criar GPO de política de senha e bloqueio de tela
2. Mapear unidades de rede e impressoras por setor
3. Aplicar configurações de firewall e atualizações
4. Validar com gpresult e testar com usuários de OUs diferentes

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

Aplica em escala as permissões e padrões definidos nas aulas anteriores.

**O que fica em aberto:** O ambiente interno está padronizado; falta publicar serviços e permitir administração remota segura.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula11.html) e a [atividade](../atividade.md).
