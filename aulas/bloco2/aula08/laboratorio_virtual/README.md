# Laboratório Virtual - Aula 08: Active Directory Domain Services

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Estrutura do Active Directory documentada e teste de login no domínio.

---

## Objetivo

Configurar o Active Directory, criar a estrutura organizacional e gerenciar usuários e grupos.

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

1. Promover o servidor a controlador do domínio nexatech.local
2. Criar OUs para Administração, Vendas, Suporte e Servidores
3. Criar usuários e grupos de segurança
4. Ingressar um cliente Windows no domínio e testar login

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

Transforma o servidor instalado na Aula 07 em uma autoridade de autenticação.

**O que fica em aberto:** O domínio precisa de DNS confiável e de endereçamento automático para os clientes.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula08.html) e a [atividade](../atividade.md).
