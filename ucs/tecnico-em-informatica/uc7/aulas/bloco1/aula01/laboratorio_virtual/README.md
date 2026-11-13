# Laboratório VirtualBox - Aula 01: TCP/IP e IPv4

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Ficha das VMs CLI01 e CLI02 com IPs, máscara, rede e evidências do teste de ping.

---

## Objetivo

Compreender o modelo TCP/IP e o endereçamento IPv4, criando duas VMs Windows 10 na mesma rede interna e testando a comunicação.

## VMs desta aula

- **CLI01** — Windows 10
- **CLI02** — Windows 10

## Antes de começar

1. Abra o VirtualBox e confirme que não há VMs da UC em execução.
2. Tenha em mãos a ISO do Windows 10.
3. Registre prints das configurações e dos testes.

## Roteiro

1. Criar as VMs CLI01 e CLI02 com Windows 10
2. Adicionar as duas VMs à rede interna rede-nexatech
3. Configurar IPs diferentes na mesma rede: 192.168.10.100 e 192.168.10.101
4. Testar ping entre as duas VMs nos dois sentidos
5. Registrar prints do ipconfig e do ping

> Não é necessário configurar gateway nesta prática: o objetivo é apenas testar a comunicação na rede interna.

## Configuração de exemplo

| VM | IP | Máscara | Rede | Gateway |
| :--- | :--- | :--- | :--- | :--- |
| CLI01 | 192.168.10.100 | 255.255.255.0 | 192.168.10.0/24 | não configurado |
| CLI02 | 192.168.10.101 | 255.255.255.0 | 192.168.10.0/24 | não configurado |

## Testes e evidências

- Print do `ipconfig /all` nas duas VMs.
- Print do `ping` da CLI01 para a CLI02 e da CLI02 para a CLI01.
- Registro do que acontece quando uma VM está em outra rede interna ou com máscara diferente.
- Atualize o documento do projeto integrador com a ficha das duas VMs.

## Comandos úteis

```powershell
# Conferir IP, máscara e rede
ipconfig /all

# Testar a comunicação entre as VMs
ping 192.168.10.101
ping 192.168.10.100
```

## Observações

- As duas VMs precisam usar **exatamente o mesmo nome de rede interna** (`rede-nexatech`).
- Se o ping falhar, confira o adaptador de rede, o IP/máscara e o firewall do Windows.
- A rede interna não dá acesso à internet por si só. Para atualizações, adicione um segundo adaptador NAT; o teste de comunicação deve ser feito pela rede interna.

## Relação com o projeto

Define os conceitos de endereçamento que sustentarão toda a infraestrutura.

**O que fica em aberto:** Com os conceitos entendidos, é preciso definir o papel de cada servidor.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula01.html) e a [atividade](../atividade.md).
