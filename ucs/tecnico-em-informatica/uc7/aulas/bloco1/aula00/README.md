# Aula 00 - Quem sou eu e a UC7

**Objetivo:** apresentar o professor, a proposta da **UC7 - Sistemas Operacionais de Redes
Locais (Servidores)** e iniciar o laboratório com **VirtualBox**, conectando a trajetória
profissional em TI (desde 2009) com o que será estudado ao longo das **32 aulas de 3 h**.

> Esta é uma aula de abertura. Ela **não substitui** a Aula 01 e não conta nas 32 aulas previstas
> na carga horária da UC.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`apresentacao_aula00.html`](apresentacao_aula00.html) | Slides de abertura (abra no navegador, navegue com ← →) |

### Estrutura da aula

```text
aula00/
  apresentacao_aula00.html
  README.md
```

---

## Roteiro da apresentação

1. **Abertura** - quem sou eu e o que vamos construir juntos.
2. **Quem sou eu** - trabalho com TI desde 2009; hoje SRE e DevOps há 6 anos.
3. **Linha do tempo** - monitor de laboratório -> estágio em manutenção -> suporte e sysadmin
   na Escola Alcides Maya -> faculdade e docência no curso técnico -> SRE/DevOps.
4. **Hoje** - administração de EKS, contas AWS, migração de sistemas e FinOps.
5. **Conexão com a UC7** - como cada etapa da carreira se liga aos blocos da disciplina.
6. **A UC7** - cenário NexaTech, competências e os cinco blocos.
7. **Redes em 1 minuto** - LAN, cliente/servidor, endereço IP e serviços de rede.
8. **VirtualBox e o laboratório** - para que serve a virtualização e por que não precisamos
   comprar quatro computadores.
9. **Hypervisor e recursos do host** - o que é hypervisor tipo 1 e tipo 2; como CPU, memória,
   disco e rede do host são distribuídos para as VMs.
10. **Criando a primeira VM** - nome, ISO, CPU, memória, disco e adaptadores de rede.
11. **Redes NAT, bridge e interna** - como cada modo funciona, quando usar e exemplos práticos.
12. **Nosso laboratório** - VMs DC01, APP01, DB01, CLI01 e FW01; rede `192.168.10.0/24`.
13. **Método e avaliação** - laboratório virtual, documentação e projeto integrador.
14. **Combinados e próximos passos** - o que esperar e o que vem na Aula 01.

---

## O que foi feito nesta abertura

- Apresentação da ferramenta **VirtualBox**.
- Explicação do conceito de **hypervisor** e da diferença entre virtualização tipo 1 e tipo 2.
- Criação da **primeira máquina virtual** da turma.
- Configuração de **CPU, memória e disco** da VM.
- Demonstração do uso dos **recursos do host** (núcleos, RAM e disco) pela VM.
- Explicação e demonstração das **redes virtuais**:
  - **NAT**: a VM navega usando o IP do host, mas não recebe conexões externas.
  - **Bridge (ponte)**: a VM entra na rede física como se fosse um computador real.
  - **Rede interna**: apenas as VMs da mesma rede se enxergam, sem internet direta.

---

## Relação com o restante da UC

| Etapa da carreira | O que foi usado | Onde aparece na UC7 |
| :--- | :--- | :--- |
| Monitor e suporte | Hardware, rede e usuários | Bloco 1 - Fundamentos |
| Estágio em manutenção | Virtualização, instalação e RAID | Bloco 1 - Aulas 04 e 05 |
| Sysadmin | Windows Server, AD, DNS, DHCP e arquivos | Bloco 2 - Windows Server |
| Operação de servidores | Linux, SSH, segurança, backup e troubleshooting | Bloco 4 - Linux e Segurança |
| Redes e firewall | Roteamento, NAT e pfSense | Bloco 3 - Redes, Roteamento e Firewall |
| SRE e DevOps | Monitoramento, governança e custo | Bloco 5 - Operação e Projeto |

---

## Laboratório apresentado

A base comum fica em [`../../../laboratorio_virtual/README.md`](../../../laboratorio_virtual/README.md)
e as VMs são criadas **manualmente no VirtualBox**, sem Vagrant:

| VM | Papel | IP interno |
| :--- | :--- | :--- |
| **DC01** | Windows Server: AD, DNS, DHCP, arquivos e GPOs | `192.168.10.10` |
| **APP01** | Ubuntu Server: DNS, DHCP, web e hardening | `192.168.10.20` |
| **DB01** | Ubuntu Server: banco de dados e práticas de serviços | `192.168.10.30` |
| **CLI01** | Windows 10: cliente para testes | `192.168.10.100` |
| **CLI02** | Windows 10: segundo cliente para testes | `192.168.10.101` |
| **FW01** | pfSense: firewall, NAT e DHCP (a partir da Aula 17) | `192.168.10.1` |

- Rede interna: `rede-nexatech` (`192.168.10.0/24`).
- Cada VM pode ter **NAT** (internet/atualizações) e **rede interna** (tráfego da UC).
- O **FW01** pode assumir o papel de gateway e DHCP da LAN para liberar a navegação.

---

## Próximo passo

Seguir para a [Aula 01 - TCP/IP e IPv4](../aula01/README.md).
