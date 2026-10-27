# Laboratório Virtual - Aula 06: Laboratório virtual e plano diretor da rede

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano Diretor da Rede NexaTech, com topologia, IPs, serviços, cronograma e riscos.

---

## Objetivo

Montar o laboratório virtual e consolidar o plano diretor da rede da NexaTech.

## VMs desta aula

DC01, LNX01 e CLI01 (validação da rede interna).

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Criar a rede interna rede-nexatech em 192.168.10.0/24
2. Configurar IP estático nas VMs e testar conectividade
3. Tirar snapshot limpo de cada VM
4. Consolidar o plano diretor em um único documento

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up dc01 lnx01 cli01
vagrant winrm dc01 -c "ipconfig"
vagrant ssh lnx01 -c "ping -c 3 192.168.10.10"
vagrant winrm cli01 -c "ping 192.168.10.10"
vagrant snapshot save dc01 baseline-dc01
vagrant snapshot save lnx01 baseline-lnx01
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Fecha o Bloco 1 com o laboratório pronto e o plano aprovado para a instalação dos serviços.

**O que fica em aberto:** Com a base pronta, qual sistema operacional será instalado e configurado primeiro?

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula06.html) e a [atividade](../atividade.md).
