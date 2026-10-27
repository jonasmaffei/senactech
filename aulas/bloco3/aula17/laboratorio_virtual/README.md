# Laboratório Virtual - Aula 17: Segurança em servidores Linux

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Relatório de auditoria de segurança com antes, depois e justificativas.

---

## Objetivo

Aplicar hardening e controles de segurança em servidores Linux e seus serviços de rede.

## VMs desta aula

LNX01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Endurecer a configuração do SSH
2. Configurar firewall e fail2ban
3. Auditar usuários, permissões e serviços ativos
4. Comparar o antes e o depois com evidências

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up lnx01
vagrant ssh lnx01
vagrant ssh lnx01 -c "systemctl status ssh"
vagrant snapshot save lnx01 baseline-lnx01
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Protege os serviços publicados na Aula 16 e prepara a integração com Windows.

**O que fica em aberto:** Protegido o servidor, ainda é preciso compartilhar arquivos e garantir recuperação.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula17.html) e a [atividade](../atividade.md).
