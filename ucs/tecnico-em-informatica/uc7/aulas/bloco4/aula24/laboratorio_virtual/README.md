# Laboratório Virtual - Aula 24: Projeto integrador: apresentação e defesa

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Projeto integrador completo e defesa oral.

---

## Objetivo

Apresentar e defender o projeto completo de rede cliente/servidor da NexaTech, com evidências de instalação, configuração e monitoramento.

## VMs desta aula

MON01, DC01, LNX01 e CLI01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Apresentar o projeto em 10 a 15 minutos
2. Demonstrar login, DNS/DHCP, arquivos, web e monitoramento
3. Responder à arguição da banca
4. Entregar a documentação final e a autoavaliação

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up mon01 dc01 lnx01 cli01
vagrant ssh mon01
vagrant ssh lnx01
vagrant winrm dc01 -c "Get-Service"
vagrant snapshot save mon01 baseline-mon01
```

## Observações

- Não destrua as VMs antes da defesa. A banca deve ser feita com o ambiente no ar e com as evidências organizadas.

## Relação com o projeto

Fecha a UC provando que o aluno consegue planejar, instalar, configurar e monitorar uma rede cliente/servidor.

**O que fica em aberto:** Depois da UC, o próximo passo é aprofundar certificações e especializações.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula24.html) e a [atividade](../atividade.md).
