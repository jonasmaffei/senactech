# Aula 00 - Quem sou eu, a UC7 e o VirtualBox

**Objetivo:** apresentar o professor, a proposta da **UC7 - Sistemas Operacionais de Redes
Locais (Servidores)** e dar uma aula completa de **VirtualBox**: instalação, criação de VMs,
discos, snapshots e os modos de rede **NAT, bridge e rede interna (local)**, conectando a
trajetória profissional em TI (desde 2009) com o que será estudado ao longo das **32 aulas de 3 h**.

> Esta é uma aula de abertura. Ela **não substitui** a Aula 01 e não conta nas 32 aulas previstas
> na carga horária da UC.

---

## Conteúdo

| Item | O que é |
| :--- | :--- |
| [`apresentacao_aula00.html`](apresentacao_aula00.html) | Slides de abertura e da aula de VirtualBox (abra no navegador, navegue com ← →) |

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
8. **VirtualBox: o que é e por que usar** - virtualização tipo 2, isolamento, custo e segurança.
9. **Instalação e requisitos** - download, Extension Pack, VT-x/AMD-V, RAM, disco e Hyper-V.
10. **Conhecendo a interface** - gerenciador, configurações, armazenamento, rede e snapshots.
11. **Hypervisor e recursos do host** - tipo 1 e tipo 2; CPU, memória, disco e rede.
12. **Criando a primeira VM** - nome, ISO, CPU, memória, disco e adaptadores.
13. **Discos, snapshots e clones** - VDI/VMDK, alocação dinâmica, snapshots e clones.
14. **NAT** - como a VM navega usando o host, port forwarding e limitações.
15. **Bridge** - a VM entra na rede física e fica visível para outros equipamentos.
16. **Rede interna (local)** - VMs isoladas, sem host e sem internet direta.
17. **Host-only e comparativo** - tabela completa entre NAT, bridge, interna e host-only.
18. **Aplicando na UC7** - NAT para atualizações, rede interna para a LAN e pfSense no meio.
19. **Problemas comuns e boas práticas** - sem internet, VMs que não se enxergam, snapshots etc.
20. **Nosso laboratório** - VMs DC01, APP01, DB01, CLI01, CLI02 e FW01; rede `192.168.10.0/24`.
21. **Método e avaliação** - laboratório virtual, documentação e projeto integrador.
22. **Combinados e próximos passos** - o que esperar e o que vem na Aula 01.

---

## VirtualBox: tópicos da aula

### O que é

O **VirtualBox** é um hypervisor de **tipo 2**: um programa instalado no sistema operacional do
computador físico (host) que cria e executa **máquinas virtuais (VMs)**. Cada VM tem CPU, memória,
disco e rede virtuais e pode executar um sistema operacional completo.

Na UC, o VirtualBox permite montar uma rede cliente/servidor inteira em um único computador, sem
comprar vários servidores.

### Instalação e requisitos

- Baixar o instalador no site oficial do VirtualBox.
- Instalar o **Extension Pack** (opcional) para recursos extras, como USB 2.0/3.0.
- Habilitar **VT-x/AMD-V** na BIOS/UEFI.
- Reservar RAM e disco suficientes no host.
- Evitar conflito com Hyper-V/WSL2 quando o desempenho for crítico.
- Manter o VirtualBox e o sistema do host atualizados.

### Interface

- **Gerenciador do VirtualBox:** lista e cria VMs.
- **Configurações:** CPU, memória, disco, rede, vídeo, pastas compartilhadas e USB.
- **Armazenamento:** controladora e ISO anexada.
- **Rede:** modo e nome da rede de cada adaptador.
- **Snapshots:** linha do tempo do estado da VM.
- **Logs:** diagnóstico de erros de inicialização.

### Criando uma VM

1. **Novo** -> nome, tipo e versão do sistema.
2. Definir **memória** e **vCPUs**.
3. Criar o **disco virtual** (VDI, alocação dinâmica).
4. Anexar a **ISO** em Armazenamento.
5. Configurar os **adaptadores de rede**.
6. Iniciar, instalar o sistema e atualizar.
7. Desligar e criar um **snapshot baseline**.

### Discos, snapshots e clones

- **VDI/VMDK:** formatos de disco virtual.
- **Alocação dinâmica:** o arquivo cresce conforme o uso.
- **Alocação fixa:** reserva todo o espaço de uma vez.
- **Snapshot:** foto do estado da VM; permite voltar atrás.
- **Clone completo:** cópia independente.
- **Clone vinculado:** compartilha discos com a VM original.

### NAT

- A VM usa o **IP do host** para acessar a internet.
- O VirtualBox fornece DHCP e NAT.
- A VM **não recebe conexões externas** por padrão.
- Para acessar um serviço da VM, usa-se **redirecionamento de portas**.
- As VMs em NAT não se enxergam diretamente.
- **Uso na UC:** atualizações, downloads e instalação de pacotes.

### Bridge (ponte)

- A VM se conecta à **placa de rede física** do host.
- Recebe IP da rede física (DHCP do roteador ou IP fixo).
- Fica **visível para outros computadores** da mesma rede.
- Pode ser acessada por IP, se o firewall permitir.
- **Riscos:** exposição na rede, conflito de IP e dependência da rede física.
- **Uso na UC:** acessar a VM a partir de outro computador.

### Rede interna (local)

- Só as VMs conectadas à **mesma rede interna** se enxergam.
- Não há acesso ao host nem à internet diretamente.
- Os IPs são definidos manualmente.
- É o modo usado na rede `rede-nexatech` do laboratório.
- **Uso na UC:** simular a LAN isolada da empresa e o lado LAN do pfSense.

### Host-only

- O **host e as VMs** se enxergam.
- A VM não sai para a internet.
- Útil para acessar a VM por SSH/RDP a partir do host.
- Pode ser combinado com NAT em outro adaptador.

### Comparativo dos modos

| Modo | Internet | Host acessa a VM | VMs se enxergam | Outros PCs da rede física | IP |
| :--- | :---: | :---: | :---: | :---: | :--- |
| **NAT** | Sim | Com port forwarding | Não (por padrão) | Não | DHCP do VirtualBox |
| **Bridge** | Sim | Sim | Sim | Sim | DHCP/IP da rede física |
| **Interna (local)** | Não | Não | Sim | Não | Manual |
| **Host-only** | Não | Sim | Sim | Não | Manual/DHCP do host |

### Aplicando na UC7

| Necessidade | Modo |
| :--- | :--- |
| Atualizar pacotes e instalar softwares | **NAT** |
| Simular a LAN da NexaTech | **Rede interna `rede-nexatech`** |
| Acessar a VM de outro computador | **Bridge** (quando necessário) |
| Administrar a VM pelo host | **Host-only** |
| pfSense como roteador/firewall | **NAT na WAN + rede interna na LAN** |

### Problemas comuns

| Sintoma | Causa provável | Solução |
| :--- | :--- | :--- |
| VM não inicia | Virtualização desabilitada | Habilitar VT-x/AMD-V na BIOS/UEFI |
| VM lenta | RAM/vCPU acima do host | Reduzir recursos ou fechar programas |
| Sem internet | Adaptador NAT ausente | Adicionar NAT ou configurar gateway |
| VMs não se enxergam | Redes internas diferentes | Usar o mesmo nome de rede interna |
| IP em conflito | IP repetido na mesma rede | Revisar o plano de IPs |
| Snapshot não restaura | VM ligada ou snapshot filho | Desligar e restaurar na ordem correta |
| Hyper-V conflita | Recursos de virtualização | Ajustar Hyper-V/WSL2 ou usar outro host |

### Boas práticas

- Criar **snapshot** antes de mudanças arriscadas.
- Padronizar nomes: `DC01`, `APP01`, `DB01`, `CLI01`, `CLI02`, `FW01`.
- Não exceder a soma de RAM/vCPU do host.
- Documentar IPs, redes e versões.
- Exportar OVA ao final de cada bloco.
- Manter a rede interna isolada e usar NAT apenas para internet.

---

## O que foi feito nesta abertura

- Apresentação da ferramenta **VirtualBox** e do conceito de virtualização.
- Explicação do **hypervisor** tipo 1 e tipo 2.
- Demonstração da interface e das configurações da VM.
- Criação da **primeira máquina virtual** da turma.
- Configuração de **CPU, memória e disco** da VM.
- Demonstração do uso dos **recursos do host** pela VM.
- Explicação e demonstração das **redes virtuais**:
  - **NAT**: a VM navega usando o IP do host, mas não recebe conexões externas.
  - **Bridge (ponte)**: a VM entra na rede física como se fosse um computador real.
  - **Rede interna (local)**: apenas as VMs da mesma rede se enxergam, sem internet direta.
  - **Host-only**: host e VMs se enxergam, sem internet.

---

## Relação com o restante da UC

| Etapa da carreira | O que foi usado | Onde aparece na UC7 |
| :--- | :--- | :--- |
| Monitor e suporte | Hardware, rede e usuários | Bloco 1 - Fundamentos |
| Estágio em manutenção | Virtualização, instalação e RAID | Bloco 1 - Aulas 05 e 06 |
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
| **APP01** | Ubuntu Server: Apache + PHP e práticas de DNS/DHCP | `192.168.10.20` |
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
