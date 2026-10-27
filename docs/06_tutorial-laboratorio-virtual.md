# Tutorial - Laboratório Virtual da UC7

Este laboratório permite executar todas as práticas da UC sem depender de servidores físicos.

## Requisitos do computador

| Item | Mínimo | Recomendado |
| :--- | :--- | :--- |
| RAM | 8 GB | 16 GB |
| Disco livre | 80 GB | 120 GB |
| CPU | 4 núcleos | 8 núcleos |
| Virtualização | habilitada na BIOS/UEFI | habilitada |
| Sistema | Windows 10/11, Linux ou macOS | Windows 11 ou Linux |

## Escolha do hypervisor

| Opção | Vantagens | Observacoes |
| :--- | :--- | :--- |
| VirtualBox | Gratuito, simples, multiplataforma | Bom para laboratório didatico |
| Hyper-V | Nativo no Windows Pro/Enterprise | Requer recursos de virtualização |
| Proxmox | Robusto, tipo 1 | Melhor com hardware dedicado |
| VMware Workstation Player | Estavel | Licença conforme o uso |

## Máquinas virtuais sugeridas

| VM | Sistema | RAM | vCPU | Disco | IP |
| :--- | :--- | :---: | :---: | :---: | :--- |
| DC01 | Windows Server 2022/2025 | 4 GB | 2 | 60 GB | 192.168.10.10 |
| LNX01 | Ubuntu Server 24.04 LTS | 2 GB | 2 | 20 GB | 192.168.10.20 |
| MON01 | Ubuntu Server 24.04 LTS | 2 GB | 2 | 20 GB | 192.168.10.30 |
| CLI01 | Windows 10/11 | 4 GB | 2 | 40 GB | DHCP |

## Rede interna

1. No VirtualBox: **Arquivo > Gerenciador de Rede > Redes somente host** ou crie uma rede interna chamada `rede-nexatech`.
2. Configure todas as VMs na mesma rede interna.
3. Use a faixa `192.168.10.0/24`, mascara `255.255.255.0`.
4. Gateway sugerido: `192.168.10.1`.
5. DNS: `192.168.10.10` (depois da instalação do AD).
6. DHCP: `192.168.10.10` (Windows) ou `192.168.10.20` (Linux, para a VLAN de visitantes).

> No Hyper-V, use um **Virtual Switch interno** e atribua IPs estaticos no host quando precisar acessar as VMs.

## Sequência de montagem

1. Instale o hypervisor e habilite a virtualização.
2. Baixe as ISOs oficiais:
   - Windows Server: https://www.microsoft.com/evalcenter/
   - Ubuntu Server: https://ubuntu.com/download/server
3. Crie a VM DC01 e instale o Windows Server.
4. Crie a VM LNX01 e instale o Ubuntu Server.
5. Crie a rede interna e configure os IPs.
6. Teste a conectividade com `ping`.
7. Tire um snapshot chamado `baseline-uc7` em cada VM.
8. Crie a VM cliente e ingresse no domínio na Aula 08.

## Checklist de validacao

- [ ] Virtualização habilitada na BIOS/UEFI
- [ ] Hypervisor instalado
- [ ] ISOs oficiais baixadas
- [ ] VMs criadas com os recursos planejados
- [ ] Rede interna `rede-nexatech` configurada
- [ ] IPs estaticos aplicados
- [ ] `ping` entre VMs funcionando
- [ ] Snapshots `baseline-uc7` criados
- [ ] Pasta de evidências organizada

## Problemas comuns

| Sintoma | Causa provavel | Solução |
| :--- | :--- | :--- |
| VM não inicia | Virtualização desabilitada | Habilitar VT-x/AMD-V na BIOS/UEFI |
| VMs não se enxergam | Rede diferente ou firewall | Conferir adaptador de rede e firewall |
| Sem acesso a internet na VM | NAT ausente | Adicionar segundo adaptador NAT ou configurar gateway |
| Windows Server lento | RAM insuficiente | Aumentar RAM ou fechar outros programas |
| Erro de ativacao | Sem licença/CAL | Usar avaliação oficial ou licença da instituicao |

## Boas práticas

- Snapshots antes de cada mudanca relevante.
- Nomes padronizados: `DC01`, `LNX01`, `MON01`, `CLI01`.
- Documentar IPs, senhas de laboratório e versões em um caderno local (nunca no Git).
- Exportar as VMs ao final do bloco como backup.
