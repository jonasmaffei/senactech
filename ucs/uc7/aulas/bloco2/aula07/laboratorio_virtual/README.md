# Laboratório Virtual - Aula 07: Instalação e configuração inicial do Windows Server

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Checklist de instalação preenchida com evidências e configurações do servidor.

---

## Objetivo

Instalar o Windows Server e executar a configuração inicial segura do servidor.

## VMs desta aula

DC01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Instalar o Windows Server na VM do laboratório
2. Definir nome, IP estático, DNS e fuso horário
3. Executar atualizações e ativar o sistema
4. Instalar as funções iniciais e habilitar administração remota

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up dc01
vagrant winrm dc01 -c "hostname"
vagrant rdp dc01
vagrant snapshot save dc01 pos-instalacao
```

## Observações

- A box do Windows Server já vem com o sistema instalado. Se a aula exigir a instalação do zero, use uma VM separada com a ISO oficial e retome o Vagrant na Aula 08.

## Relação com o projeto

Inicia o Bloco 2 instalando a base que receberá o Active Directory.

**O que fica em aberto:** Um servidor isolado não autentica ninguém; é preciso criar o domínio.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula07.html) e a [atividade](../atividade.md).
