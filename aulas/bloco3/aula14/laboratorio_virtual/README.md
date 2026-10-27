# Laboratório Virtual - Aula 14: Instalação e configuração inicial do Linux Server

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Checklist de instalação e hardening inicial do Linux Server.

---

## Objetivo

Instalar uma distribuição Linux de servidor e realizar a configuração inicial segura.

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

1. Instalar o Ubuntu Server na VM do laboratório
2. Configurar IP estático e hostname
3. Criar usuário administrativo e habilitar SSH
4. Atualizar o sistema e configurar o firewall básico

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

- A box do Ubuntu Server já vem com o sistema instalado. Se a aula exigir a instalação do zero, use uma VM separada com a ISO oficial e retome o Vagrant nas aulas seguintes.

## Relação com o projeto

Abre o Bloco 3 e coloca o segundo sistema operacional no mesmo laboratório.

**O que fica em aberto:** Instalado o sistema, é preciso aprender a operá-lo no dia a dia.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula14.html) e a [atividade](../atividade.md).
