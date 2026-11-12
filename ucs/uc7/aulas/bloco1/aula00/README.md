# Aula 00 - Quem sou eu e a UC7

**Objetivo:** apresentar o professor, a proposta da **UC7 - Sistemas Operacionais de Redes
Locais (Servidores)** e o laboratório com **VirtualBox**, conectando a trajetória profissional
em TI (desde 2009) com o que será estudado ao longo das 24 aulas.

> Esta é uma aula de abertura. Ela **não substitui** a Aula 01 e não conta nas 24 aulas previstas
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
6. **A UC7** - cenário NexaTech, competências e os quatro blocos.
7. **Redes em 1 minuto** - LAN, cliente/servidor, endereço IP e serviços de rede.
8. **VirtualBox e o laboratório** - VMs DC01, LNX01, MON01 e CLI01 na rede `192.168.10.0/24`.
9. **Método e avaliação** - laboratório virtual, documentação e projeto integrador.
10. **Combinados e próximos passos** - o que esperar e o que vem na Aula 01.

---

## Relação com o restante da UC

| Etapa da carreira | O que foi usado | Onde aparece na UC7 |
| :--- | :--- | :--- |
| Monitor e suporte | Hardware, rede e usuários | Bloco 1 - Fundamentos |
| Estágio em manutenção | Virtualização e instalação | Bloco 1 - Aulas 4 e 6 |
| Sysadmin | Windows Server, AD, DNS, DHCP e arquivos | Bloco 2 - Windows Server |
| Operação de servidores | Linux, segurança, backup e troubleshooting | Bloco 3 - Linux e Segurança |
| SRE e DevOps | Monitoramento, nuvem, governança e custo | Bloco 4 - Monitoramento e Nuvem |

---

## Laboratório apresentado

A base comum fica em [`../../../laboratorio_virtual/README.md`](../../../laboratorio_virtual/README.md)
e cria quatro VMs com **Vagrant + VirtualBox**:

| VM | Papel | IP interno |
| :--- | :--- | :--- |
| **DC01** | Windows Server: AD, DNS, DHCP, arquivos e GPOs | `192.168.10.10` |
| **LNX01** | Ubuntu Server: DNS, web, Samba e hardening | `192.168.10.20` |
| **MON01** | Ubuntu Server: monitoramento e logs | `192.168.10.30` |
| **CLI01** | Windows 11: cliente para testes | `192.168.10.100` |

---

## Próximo passo

Seguir para a [Aula 01 - O servidor na rede local e a UC7](../aula01/README.md).
