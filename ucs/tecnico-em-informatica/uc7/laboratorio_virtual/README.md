# Laboratório Virtual - VirtualBox

Este diretório concentra a infraestrutura **cliente/servidor** da UC7. As práticas são executadas em máquinas virtuais criadas **manualmente no VirtualBox**, sem Vagrant.

A montagem é cumulativa: cada bloco adiciona serviços à mesma rede interna. O aluno cria as VMs, configura os adaptadores, instala os sistemas e documenta as evidências.

> **Atenção:** ajuste memória, disco e número de VMs à capacidade do host. A aplicação de teste e os scripts de deploy estão em [`aplicacao-teste/`](aplicacao-teste/README.md).

---

## Requisitos

| Item | Versão sugerida |
| :--- | :--- |
| VirtualBox | 7.0 ou superior |
| RAM do host | 16 GB recomendado (8 GB mínimo) |
| Disco livre | 120 GB ou mais |
| CPU | 4 núcleos (8 recomendado) |
| Virtualização | VT-x/AMD-V habilitada na BIOS/UEFI |
| ISOs | Windows Server (avaliação), Ubuntu Server 24.04 LTS, pfSense e Windows 10 |

Downloads oficiais:

- VirtualBox: https://www.virtualbox.org/wiki/Downloads
- Windows Server (avaliação): https://www.microsoft.com/evalcenter/
- Ubuntu Server: https://ubuntu.com/download/server
- pfSense: https://www.pfsense.org/download/
- Windows 10 (avaliação): https://www.microsoft.com/evalcenter/

Confirme a instalação no prompt do Windows:

```powershell
VBoxManage --version
```

---

## Máquinas virtuais

| VM | Sistema | RAM | vCPU | Disco | IP interno |
| :--- | :--- | :---: | :---: | :---: | :--- |
| DC01 | Windows Server 2022/2025 | 4 GB | 2 | 60 GB | 192.168.10.10 |
| APP01 | Ubuntu Server 24.04 LTS | 2 GB | 2 | 50 GB | 192.168.10.20 |
| DB01 | Ubuntu Server 24.04 LTS | 2 GB | 2 | 50 GB | 192.168.10.30 |
| CLI01 | Windows 10 | 4 GB | 2 | 40 GB | 192.168.10.100 (ou DHCP) |
| CLI02 | Windows 10 | 4 GB | 2 | 40 GB | 192.168.10.101 (ou DHCP) |
| FW01 | pfSense | 2 GB | 2 | 20 GB | 192.168.10.1 (LAN) |

A rede interna chama-se `rede-nexatech` e usa `192.168.10.0/24`.

> **Serviços espelhados:** o DC01 mantém o DNS e o DHCP oficiais do domínio. O APP01/DB01 são usados para instalar e comparar as versões Linux de DNS, DHCP e web, que devem ser desativadas ao final da prática para não conflitar com o DC01.

### Adaptadores de rede

Cada VM de servidor/cliente usa dois adaptadores:

1. **NAT** - acesso à internet e atualizações.
2. **Rede Interna `rede-nexatech`** - tráfego cliente/servidor da UC.

O **FW01 (pfSense)** usa:

1. **NAT** como WAN (lado da internet).
2. **Rede Interna `rede-nexatech`** como LAN (lado da empresa).

> A rede interna, sozinha, não dá internet. Para navegar, use NAT/bridge ou configure o pfSense como gateway e NAT de saída.

### Endereçamento

- `192.168.10.1` - FW01 (gateway/LAN)
- `192.168.10.10` - DC01 (AD, DNS, DHCP)
- `192.168.10.20` - APP01 (web Apache/PHP; práticas de DNS/DHCP; monitoramento)
- `192.168.10.30` - DB01 (banco de dados e práticas de serviços)
- `192.168.10.100` - CLI01
- `192.168.10.101` - CLI02
- `192.168.10.110` a `192.168.10.200` - faixa DHCP
- `192.168.10.254` - reserva/broadcast de laboratório

---

## Como criar as VMs manualmente

1. Abra o **VirtualBox** e clique em **Novo**.
2. Informe o nome da VM (ex.: `DC01`), o tipo e a versão do sistema.
3. Defina **memória** e **vCPU** conforme a tabela.
4. Crie um **disco virtual** do tipo VDI, alocação dinâmica, com o tamanho indicado.
5. Em **Configurações > Rede**, adicione:
   - Adaptador 1: **NAT**;
   - Adaptador 2: **Rede Interna** com nome `rede-nexatech`.
6. Anexe a ISO em **Configurações > Armazenamento** e inicie a VM.
7. Instale o sistema operacional.
8. Configure IP, hostname e DNS.
9. Desligue a VM e tire um **snapshot baseline**.

> Repita o processo para cada VM. O nome da rede interna deve ser **exatamente** `rede-nexatech` em todas elas.

### Criando a rede interna

No VirtualBox, a rede interna não precisa ser criada antes: ao selecionar **Rede Interna** e digitar `rede-nexatech` no adaptador de cada VM, todas passam a compartilhar o mesmo segmento.

### Acesso pelo host

Se precisar abrir serviços no navegador do computador físico, use **redirecionamento de portas** no adaptador NAT ou um adaptador **Host-only**:

| VM | Serviço | Porta sugerida no host |
| :--- | :--- | :--- |
| DC01 | IIS / intranet | `http://localhost:8080` |
| APP01 | Apache/PHP | `http://localhost:8081` |
| APP01 | Zabbix/Grafana | `http://localhost:8082` |
| FW01 | Interface web do pfSense | `https://localhost:8443` |

> Mantenha o redirecionamento limitado a `127.0.0.1` por segurança.

---

## Snapshots

Tire um snapshot antes de cada mudança arriscada. Pela interface: **Máquina > Tirar snapshot**. Pelo terminal:

```powershell
VBoxManage snapshot "DC01" take "baseline-aula08"
VBoxManage snapshot "DC01" list
VBoxManage snapshot "DC01" restore "baseline-aula08"
```

Sugestões de nomes: `baseline-uc7`, `antes-ad`, `antes-dns`, `antes-pfsense`, `antes-hardening`.

---

## Estrutura

```text
laboratorio_virtual/
  README.md
```

Os roteiros específicos de cada aula ficam em:

```text
aulas/blocoN/aulaNN/laboratorio_virtual/README.md
```

Cada roteiro indica:

- quais VMs usar;
- o que configurar naquela aula;
- comandos de teste;
- evidências a registrar.

---

## Sequência de montagem

| Etapa | Aulas | O que fazer |
| :--- | :---: | :--- |
| 1 | 05-06 | Especificar o hardware e criar a primeira VM no VirtualBox. |
| 2 | 07 | Consolidar as VMs base, a rede interna e o plano diretor. |
| 3 | 08-15 | Instalar Windows Server; AD, controlador, UOs, DNS, DHCP, arquivos, quotas e GPOs. |
| 4 | 16-19 | Configurar roteamento/NAT, pfSense, IIS e acesso remoto. |
| 5 | 20-29 | Instalar Ubuntu (APP01/DB01); usuários, SSH, DHCP, DNS, Apache/PHP, banco, hardening e backup. |
| 6 | 30-32 | Monitoramento, automação, troubleshooting, governança e projeto. |

---

## Solução de problemas

| Sintoma | Causa provável | Solução |
| :--- | :--- | :--- |
| VM não inicia | Virtualização desabilitada | Habilitar VT-x/AMD-V na BIOS/UEFI |
| VMs não se enxergam | Redes internas com nomes diferentes | Conferir se todas usam `rede-nexatech` |
| Linux sem internet | NAT ausente ou DNS quebrado | Conferir o Adaptador 1 (NAT) e o DNS |
| Windows muito lento | RAM insuficiente | Fechar programas ou reduzir VMs ligadas |
| Cliente não recebe IP | DHCP não autorizado ou escopo incorreto | Revisar escopo e autorização no AD |
| Nome não resolve | DNS apontando para servidor errado | Conferir o DNS do cliente e as zonas |
| pfSense não navega | Regra/NAT ausente na LAN | Conferir regra da LAN e NAT de saída |
| Snapshot não restaura | Snapshot filho ou VM ligada | Desligar a VM e restaurar na ordem correta |

---

## Boas práticas

- Snapshots antes de cada mudança relevante.
- Nomes padronizados: `DC01`, `APP01`, `DB01`, `CLI01`, `CLI02` e `FW01`.
- Documentar IPs, versões e senhas de laboratório em caderno local (nunca no Git).
- Exportar as VMs ao final de cada bloco como backup (OVA).
- Manter a rede interna isolada; usar NAT apenas quando precisar de internet.
- Registrar as evidências no portfólio do projeto integrador.

---

## Relação com o projeto integrador

O laboratório é a base técnica do projeto da NexaTech. As evidências geradas nas VMs (prints, comandos, configurações e testes) devem ser guardadas no portfólio do grupo e usadas na defesa final da Aula 32.

> Voltar para o [README do repositório](../README.md).
