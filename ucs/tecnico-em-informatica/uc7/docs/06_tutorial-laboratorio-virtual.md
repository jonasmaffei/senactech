# Tutorial - Laboratório Virtual com VirtualBox

Este tutorial explica como montar o laboratório da UC7 usando apenas o **VirtualBox**, sem Vagrant. A montagem é cumulativa: cada bloco adiciona VMs e serviços à mesma rede interna.

> A referência rápida de VMs, IPs e comandos está em [`../laboratorio_virtual/README.md`](../laboratorio_virtual/README.md).

---

## 1. Requisitos do computador

| Item | Mínimo | Recomendado |
| :--- | :--- | :--- |
| RAM | 8 GB | 16 GB |
| Disco livre | 120 GB | 180 GB |
| CPU | 4 núcleos | 8 núcleos |
| Virtualização | habilitada na BIOS/UEFI | habilitada |
| Sistema | Windows 10, Linux ou macOS | Windows 10 ou Linux |

Antes de começar, confirme que **VT-x/AMD-V** está habilitado na BIOS/UEFI. No Windows, o Gerenciador de Tarefas > Desempenho > CPU mostra se a virtualização está ativa.

---

## 2. Instalação do VirtualBox

1. Baixe o instalador em https://www.virtualbox.org/wiki/Downloads.
2. Instale com as opções padrão e reinicie o computador se solicitado.
3. Confirme no prompt:

```powershell
VBoxManage --version
```

> Se usar Windows com Hyper-V ou WSL2, o VirtualBox pode ficar mais lento. Para o laboratório, prefira desligar o Hyper-V ou usar o modo de compatibilidade indicado pela Oracle.

---

## 3. Conceitos de virtualização

| Conceito | O que é |
| :--- | :--- |
| **Host** | Computador físico que executa as VMs. |
| **Guest** | Sistema operacional que roda dentro da VM. |
| **Hypervisor tipo 1** | Roda direto no hardware (Hyper-V, ESXi, Proxmox). |
| **Hypervisor tipo 2** | Roda como aplicativo no sistema (VirtualBox, VMware Workstation). |
| **Snapshot** | Foto do estado da VM, usada para voltar atrás. |
| **Disco virtual** | Arquivo VDI/VMDK que simula o disco da VM. |

### Recursos do host

- **CPU:** cada VM recebe vCPUs. Não distribua mais núcleos do que o host possui.
- **Memória:** a RAM da VM fica reservada enquanto ela está ligada.
- **Disco:** o disco virtual cresce conforme o uso (alocação dinâmica).
- **Rede:** os adaptadores virtuais definem se a VM fala com o host, com outras VMs ou com a internet.

> Regra prática: em um host com 8 GB, ligue no máximo duas VMs ao mesmo tempo e reduza a memória das VMs Linux para 1-2 GB.

---

## 4. Redes virtuais

| Modo | Como funciona | Quando usar |
| :--- | :--- | :--- |
| **NAT** | A VM usa o IP do host para sair à internet; não recebe conexões externas. | Atualizações e downloads. |
| **Bridge** | A VM entra na rede física como um computador real. | Acesso a partir de outro computador da rede. |
| **Rede Interna** | Só as VMs da mesma rede interna se veem; não há internet direta. | Simular a LAN da empresa. |
| **Host-only** | O host e as VMs se veem, mas a VM não sai para a internet. | Acesso do host às VMs. |

**Padrão da UC:** cada VM tem **NAT** (Adaptador 1) e **Rede Interna `rede-nexatech`** (Adaptador 2). O **FW01 (pfSense)** faz a ponte entre a WAN (NAT) e a LAN (rede interna).

---

## 5. Máquinas virtuais da UC

| VM | Sistema | RAM | vCPU | Disco | IP |
| :--- | :--- | :---: | :---: | :---: | :--- |
| DC01 | Windows Server 2022/2025 | 4 GB | 2 | 60 GB | 192.168.10.10 |
| APP01 | Ubuntu Server 24.04 LTS | 2 GB | 2 | 50 GB | 192.168.10.20 |
| DB01 | Ubuntu Server 24.04 LTS | 2 GB | 2 | 20 GB | 192.168.10.30 |
| CLI01 | Windows 10 | 4 GB | 2 | 40 GB | 192.168.10.100 (ou DHCP) |
| CLI02 | Windows 10 | 4 GB | 2 | 40 GB | 192.168.10.101 (ou DHCP) |
| FW01 | pfSense | 2 GB | 2 | 20 GB | 192.168.10.1 |

Rede interna: `rede-nexatech` (`192.168.10.0/24`).

> O DNS e o DHCP oficiais ficam no DC01. As versões Linux são instaladas no APP01/DB01 para comparação e devem ser desativadas após a prática.

---

## 6. Criando uma VM no VirtualBox

1. Clique em **Novo**.
2. Informe o nome (ex.: `APP01`), o tipo e a versão do sistema.
3. Defina a memória e o número de vCPUs.
4. Crie um disco virtual VDI de alocação dinâmica.
5. Abra **Configurações > Rede**:
   - Adaptador 1: **NAT**;
   - Adaptador 2: **Rede Interna** com nome `rede-nexatech`.
6. Em **Armazenamento**, anexe a ISO do sistema.
7. Inicie a VM e conclua a instalação.
8. Desligue a VM e tire um **snapshot**.

### Particionamento do Ubuntu (APP01)

Siga o material do professor:

- **EFI:** 200 MB
- **/:** 20 GB, sistema de arquivos **XFS**
- **/home:** 25 GB, sistema de arquivos **XFS**
- **swap:** restante do disco
- **Sem ambiente gráfico**

Rede estática no Ubuntu (exemplo em `/etc/network/interfaces`):

```text
auto enp0s8
iface enp0s8 inet static
    address 192.168.10.20
    netmask 255.255.255.0
    gateway 192.168.10.1
    dns-nameservers 192.168.10.10
```

> O nome da interface pode variar (`enp0s8`, `enp0s9`). Confira com `ip -br addr`.

---

## 7. Sequência de montagem

| Etapa | Aulas | O que fazer |
| :--- | :---: | :--- |
| 1 | 05-06 | Especificar hardware e criar a primeira VM. |
| 2 | 07 | Consolidar as VMs base, a rede interna e o plano diretor. |
| 3 | 08-15 | Instalar Windows Server (AD, DNS, DHCP, arquivos, quotas e GPOs). |
| 4 | 16-19 | Roteamento/NAT, pfSense, IIS e acesso remoto. |
| 5 | 20-29 | Ubuntu (APP01/DB01), usuários, SSH, DHCP, DNS, Apache/PHP, banco, hardening e backup. |
| 6 | 30-32 | Monitoramento, automação, troubleshooting, governança e projeto. |

---

## 8. Laboratório de pfSense

1. Baixe a ISO em https://www.pfsense.org/download/.
2. Crie a VM `FW01` com **duas** interfaces:
   - Adaptador 1: **NAT** (WAN);
   - Adaptador 2: **Rede Interna `rede-nexatech`** (LAN).
3. Instale o pfSense e defina:
   - WAN via DHCP (NAT do VirtualBox);
   - LAN `192.168.10.1/24`.
4. Acesse a interface web em `https://192.168.10.1` a partir de uma VM da LAN (ou por redirecionamento de porta no host).
5. Configure DHCP na LAN e a regra padrão.
6. Verifique o NAT de saída e teste a navegação em `CLI01` ou `CLI02`.
7. Exporte o backup da configuração (**Diagnostics > Backup & Restore**).

> O pfSense substitui o gateway improvisado e permite aplicar regras de firewall auditáveis.

---

## 9. Checklist de validação

- [ ] Virtualização habilitada na BIOS/UEFI
- [ ] VirtualBox instalado e `VBoxManage` funcionando
- [ ] ISOs oficiais baixadas
- [ ] VMs criadas com os recursos planejados
- [ ] Rede interna `rede-nexatech` configurada em todas as VMs
- [ ] IPs estáticos aplicados
- [ ] `ping` entre VMs funcionando
- [ ] Snapshots baseline criados
- [ ] pfSense instalado e navegação liberada
- [ ] Pasta de evidências organizada
- [ ] Documentação do projeto atualizada

---

## 10. Problemas comuns

| Sintoma | Causa provável | Solução |
| :--- | :--- | :--- |
| VM não inicia | Virtualização desabilitada | Habilitar VT-x/AMD-V na BIOS/UEFI |
| VMs não se enxergam | Nome da rede interna diferente | Conferir `rede-nexatech` em todas |
| Linux sem internet | NAT ausente ou DNS quebrado | Conferir Adaptador 1 e DNS |
| Windows lento | RAM insuficiente | Fechar programas ou reduzir VMs ligadas |
| Cliente não recebe IP | DHCP não autorizado ou escopo errado | Revisar escopo e autorização |
| Nome não resolve | DNS apontando para servidor errado | Conferir DNS do cliente e zonas |
| pfSense não navega | Regra/NAT ausente | Conferir regra da LAN e NAT de saída |
| Snapshot não restaura | VM ligada ou snapshot filho | Desligar e restaurar na ordem correta |

---

## 11. Boas práticas

- Snapshot antes de cada mudança relevante.
- Nomes padronizados: `DC01`, `APP01`, `DB01`, `CLI01`, `CLI02`, `FW01`.
- Documentar IPs, versões e senhas de laboratório em caderno local (nunca no Git).
- Exportar as VMs como OVA ao final de cada bloco.
- Manter a rede interna isolada; usar NAT apenas para internet.
- Registrar evidências no portfólio do projeto integrador.

---

> Voltar para o [README do repositório](../README.md).
