# Tutorial - Laboratório Virtual da UC7

Este laboratório permite executar todas as práticas da UC no **VirtualBox**, montando uma infraestrutura **cliente/servidor** completa sem depender de servidores físicos.

A montagem é cumulativa: cada bloco adiciona serviços e validações à mesma rede interna.

---

## Requisitos do computador

| Item | Mínimo | Recomendado |
| :--- | :--- | :--- |
| RAM | 8 GB | 16 GB |
| Disco livre | 80 GB | 120 GB |
| CPU | 4 núcleos | 8 núcleos |
| Virtualização | habilitada na BIOS/UEFI | habilitada |
| Sistema | Windows 10/11, Linux ou macOS | Windows 11 ou Linux |

---

## Escolha do hypervisor

| Opção | Vantagens | Observações |
| :--- | :--- | :--- |
| VirtualBox | Gratuito, simples, multiplataforma | Opção principal da UC |
| Hyper-V | Nativo no Windows Pro/Enterprise | Requer recursos de virtualização |
| Proxmox | Robusto, tipo 1 | Melhor com hardware dedicado |
| VMware Workstation Player | Estável | Licença conforme o uso |

> A UC usa o **VirtualBox** como ambiente padrão. Os roteiros podem ser adaptados para Hyper-V ou Proxmox.

---

## Máquinas virtuais sugeridas

| VM | Sistema | RAM | vCPU | Disco | IP |
| :--- | :--- | :---: | :---: | :---: | :--- |
| DC01 | Windows Server 2022/2025 | 4 GB | 2 | 60 GB | 192.168.10.10 |
| LNX01 | Ubuntu Server 24.04 LTS | 2 GB | 2 | 20 GB | 192.168.10.20 |
| MON01 | Ubuntu Server 24.04 LTS | 2 GB | 2 | 20 GB | 192.168.10.30 |
| CLI01 | Windows 10/11 | 4 GB | 2 | 40 GB | DHCP |

---

## Rede interna do laboratório

1. No VirtualBox, crie uma **Rede Interna** (Internal Network) chamada `rede-nexatech`.
2. Em cada VM, configure o adaptador de rede principal como **Rede Interna** e selecione `rede-nexatech`.
3. Use a faixa `192.168.10.0/24`, máscara `255.255.255.0`.
4. Endereços fixos:
   - `192.168.10.10` - DC01 (Windows Server)
   - `192.168.10.20` - LNX01 (Ubuntu Server)
   - `192.168.10.30` - MON01 (Ubuntu Server)
   - `192.168.10.1` - gateway reservado para um futuro roteador/firewall
5. O cliente CLI01 deve receber IP por **DHCP** a partir do DC01.
6. DNS dos clientes: `192.168.10.10`, após a instalação do Active Directory.
7. DHCP:
   - `192.168.10.10` no Windows Server (escopo principal);
   - `192.168.10.20` no Linux, apenas para a VLAN de visitantes.

> **Internet nas VMs:** adicione um **segundo adaptador em modo NAT** somente nas VMs que precisarem baixar pacotes. O tráfego do laboratório continua na rede interna `rede-nexatech`.
>
> **Acesso pelo host:** se precisar abrir o navegador do computador físico, use um adaptador **Host-only** ou redirecionamento de portas. Não substitua a rede interna por NAT, pois isso isola as VMs umas das outras.

> **Hyper-V:** use um **Virtual Switch interno** e atribua IPs estáticos às VMs. O host pode receber um endereço na mesma faixa para acesso de teste.

---

## Sequência de montagem da infraestrutura

| Etapa | Aulas | O que fazer |
| :--- | :---: | :--- |
| 1 | 04 | Criar as VMs DC01 e LNX01; configurar a rede interna; tirar o snapshot `baseline-uc7`. |
| 2 | 05-06 | Validar o plano de IPs, testar `ping` entre as VMs e consolidar o plano diretor. |
| 3 | 07-13 | Instalar e configurar o Windows Server; criar o domínio; ingressar a CLI01; configurar AD, DNS, DHCP, arquivos, GPO, IIS e automação. |
| 4 | 14-19 | Instalar e configurar o Linux Server; publicar DNS, DHCP, web, Samba; aplicar hardening e backup; testar a integração com o Windows. |
| 5 | 20-24 | Criar a MON01; implantar monitoramento e alertas; testar backup e continuidade; preparar a demonstração final. |

### Passo a passo inicial

1. Instale o VirtualBox e habilite a virtualização na BIOS/UEFI.
2. Baixe as ISOs oficiais:
   - Windows Server: https://www.microsoft.com/evalcenter/
   - Ubuntu Server: https://ubuntu.com/download/server
3. Crie a VM DC01 e instale o Windows Server.
4. Crie a VM LNX01 e instale o Ubuntu Server.
5. Crie a rede interna `rede-nexatech` e conecte as duas VMs.
6. Configure os IPs estáticos `192.168.10.10` e `192.168.10.20`.
7. Teste a conectividade com `ping`.
8. Tire o snapshot `baseline-uc7` em cada VM.
9. Crie a VM CLI01 e ingresse no domínio na Aula 08.
10. Crie a VM MON01 quando chegar ao Bloco 4.

---

## Checklist de validação

- [ ] Virtualização habilitada na BIOS/UEFI
- [ ] VirtualBox instalado
- [ ] ISOs oficiais baixadas
- [ ] VMs criadas com os recursos planejados
- [ ] Rede interna `rede-nexatech` configurada
- [ ] IPs estáticos aplicados
- [ ] `ping` entre VMs funcionando
- [ ] Snapshots `baseline-uc7` criados
- [ ] Pasta de evidências organizada
- [ ] Documentação do projeto atualizada

---

## Problemas comuns

| Sintoma | Causa provável | Solução |
| :--- | :--- | :--- |
| VM não inicia | Virtualização desabilitada | Habilitar VT-x/AMD-V na BIOS/UEFI |
| VMs não se enxergam | Rede diferente ou firewall | Conferir o adaptador de rede e o firewall |
| Sem acesso à internet na VM | NAT ausente | Adicionar segundo adaptador NAT ou configurar gateway |
| Windows Server lento | RAM insuficiente | Aumentar RAM ou fechar outros programas |
| Erro de ativação | Sem licença/CAL | Usar avaliação oficial ou licença da instituição |
| Cliente não recebe IP | DHCP não autorizado ou escopo incorreto | Revisar o escopo e a autorização no AD |
| Nome não resolve | DNS apontando para servidor errado | Conferir o DNS do cliente e as zonas |

---

## Boas práticas

- Snapshots antes de cada mudança relevante.
- Nomes padronizados: `DC01`, `LNX01`, `MON01`, `CLI01`.
- Documentar IPs, senhas de laboratório e versões em um caderno local (nunca no Git).
- Exportar as VMs ao final de cada bloco como backup.
- Manter a rede interna isolada; usar NAT apenas quando precisar de internet.
- Registrar as evidências no portfólio do projeto integrador.

---

> Voltar para o [README do repositório](../README.md).
