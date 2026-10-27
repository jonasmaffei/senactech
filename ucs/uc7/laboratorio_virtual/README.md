# Laboratório Virtual - Vagrant + VirtualBox

Este diretório concentra a infraestrutura **cliente/servidor** da UC7. As práticas são executadas em máquinas virtuais criadas pelo **Vagrant** com o provider **VirtualBox**.

A ideia é que o aluno não perca tempo criando quatro VMs manualmente em cada aula. O Vagrant sobe a base, e o aluno configura os serviços (AD, DNS, DHCP, arquivos, web, segurança, backup e monitoramento) durante as aulas.

> **Atenção:** o laboratório foi escrito para ser validado no computador do professor. Ele não foi executado neste ambiente de desenvolvimento porque Vagrant, VirtualBox e Ruby não estão instalados aqui.

---

## Requisitos

| Item | Versão sugerida |
| :--- | :--- |
| VirtualBox | 7.0 ou superior |
| Vagrant | 2.4 ou superior |
| RAM do host | 16 GB recomendado (8 GB mínimo) |
| Disco livre | 80 GB ou mais |
| Virtualização | habilitada na BIOS/UEFI |

Instalação:

- VirtualBox: https://www.virtualbox.org/wiki/Downloads
- Vagrant: https://developer.hashicorp.com/vagrant/install

No Windows, reinicie após instalar e confirme:

```powershell
vagrant --version
VBoxManage --version
```

---

## Máquinas virtuais

| VM | Box padrão | Sistema | RAM | vCPU | IP interno |
| :--- | :--- | :--- | :---: | :---: | :--- |
| DC01 | `gusztavvargadr/windows-server-2022-standard` | Windows Server 2022 | 4 GB | 2 | 192.168.10.10 |
| LNX01 | `bento/ubuntu-24.04` | Ubuntu Server 24.04 LTS | 2 GB | 2 | 192.168.10.20 |
| MON01 | `bento/ubuntu-24.04` | Ubuntu Server 24.04 LTS | 2 GB | 2 | 192.168.10.30 |
| CLI01 | `gusztavvargadr/windows-11` | Windows 11 | 4 GB | 2 | 192.168.10.100 |

A rede interna do laboratório chama-se `rede-nexatech` e usa `192.168.10.0/24`.

Cada VM tem dois adaptadores:

1. **NAT** - usado pelo Vagrant para SSH/WinRM e, quando necessário, para acesso à internet.
2. **Rede Interna `rede-nexatech`** - usado para o tráfego cliente/servidor da UC.

> O **IP 192.168.10.100** da CLI01 é um endereço fixo de laboratório. Na Aula 09, o aluno pode mudar o adaptador interno para DHCP e testar o escopo do DC01.

### Acesso pelo host (portas encaminhadas)

Para abrir os serviços web no navegador do computador físico:

| VM | Serviço | URL no host | Quando |
| :--- | :--- | :--- | :--- |
| DC01 | IIS / intranet HTTP | http://localhost:8080 | A partir da Aula 12 |
| DC01 | IIS / intranet HTTPS | https://localhost:8443 | A partir da Aula 12 |
| LNX01 | Nginx/Apache HTTP | http://localhost:8081 | A partir da Aula 16 |
| LNX01 | Nginx/Apache HTTPS | https://localhost:8444 | A partir da Aula 16 |
| MON01 | Zabbix ou painel HTTP | http://localhost:8082 | A partir da Aula 20 |
| MON01 | Grafana | http://localhost:3000 | A partir da Aula 20 |

> As portas estão limitadas a `127.0.0.1` por segurança. Se precisar acessar de outro computador da mesma rede, ajuste `host_ip` no `Vagrantfile`.

---

## Boxes do Windows

As boxes do Windows são imagens de avaliação mantidas por terceiros. Verifique o licenciamento antes de usar em produção ou em larga escala.

Para trocar a versão:

```powershell
$env:UC7_WIN_SERVER_BOX="gusztavvargadr/windows-server-2025-standard"
$env:UC7_WIN_CLIENT_BOX="gusztavvargadr/windows-11"
vagrant up
```

Também é possível usar as boxes `StefanScherer/windows_2022` e `StefanScherer/windows_11`, desde que a instituição valide a licença e o funcionamento.

> **Tamanho do download:** as boxes do Windows são grandes (várias gigabytes). Baixe uma vez e reutilize.

> **Atenção didática:** as boxes `gusztavvargadr` vêm com Windows Update, Defender e UAC desabilitados para agilizar o laboratório. Isso **não** é uma configuração de produção. Use essa diferença como discussão nas aulas de segurança, GPO e governança.

---

## Como usar

Todos os comandos são executados **dentro desta pasta** (`laboratorio_virtual/`).

### Subir todas as VMs

```bash
vagrant up
```

Para forçar o provider VirtualBox:

```bash
vagrant up --provider=virtualbox
```

Na primeira execução, o Vagrant baixa as boxes, cria as VMs, configura a rede interna e executa os provisionamentos básicos.

### Subir apenas uma VM

```bash
vagrant up dc01
vagrant up lnx01
vagrant up mon01
vagrant up cli01
```

### Ver o estado

```bash
vagrant status
```

### Acessar as VMs

```bash
# Linux
vagrant ssh lnx01
vagrant ssh mon01

# Windows
vagrant winrm dc01 -c "hostname"
vagrant winrm cli01 -c "hostname"
vagrant rdp dc01
vagrant rdp cli01
```

No Windows, o comando `vagrant winrm <vm> -c "<comando>"` executa PowerShell na VM.

### Provisionar novamente

```bash
vagrant provision dc01
vagrant provision lnx01
```

### Desligar, religar e destruir

```bash
vagrant halt
vagrant reload dc01
vagrant destroy -f
```

> `vagrant destroy -f` apaga as VMs e todo o trabalho feito nelas. Use com cuidado.

---

## Snapshots

O provider VirtualBox suporta snapshots pelo Vagrant. Tire um snapshot antes de cada mudança arriscada:

```bash
vagrant snapshot save dc01 baseline-dc01
vagrant snapshot save lnx01 baseline-lnx01
vagrant snapshot save cli01 baseline-cli01
```

Listar e restaurar:

```bash
vagrant snapshot list
vagrant snapshot restore dc01 baseline-dc01
```

> O nome do snapshot é livre. Sugestão: `baseline-uc7`, `antes-ad`, `antes-gpo`, `antes-hardening`.

---

## Estrutura

```text
laboratorio_virtual/
  Vagrantfile
  README.md
  provision/
    dc01/01-baseline.ps1
    cli01/01-baseline.ps1
    linux/01-baseline.sh
```

Os roteiros específicos de cada aula ficam em:

```text
aulas/blocoN/aulaNN/laboratorio_virtual/README.md
```

Cada roteiro assume que a base do Vagrant já está no ar e indica:

- quais VMs usar;
- o que configurar naquela aula;
- comandos de teste;
- evidências a registrar.

---

## O que o provisionamento faz

### DC01

- identifica o adaptador da rede interna;
- aplica o IP `192.168.10.10/24`;
- configura o DNS para `192.168.10.10`;
- renomeia o computador para `DC01`;
- ajusta o fuso horário e libera ICMP.

Ele **não** promove o servidor a controlador de domínio. A promoção do AD DS é feita pelo aluno na Aula 08.

### LNX01 e MON01

- definem o hostname;
- ajustam o fuso horário;
- configuram o DNS do domínio no adaptador interno;
- instalam pacotes básicos (`curl`, `dnsutils`, `tcpdump`, `ufw`, `fail2ban`, `rsync`, etc.);
- habilitam o SSH.

Os serviços de rede são configurados nas aulas correspondentes.

### CLI01

- aplica o IP `192.168.10.100/24`;
- configura o DNS para `192.168.10.10`;
- renomeia o computador para `CLI01`;
- libera ICMP.

O ingresso no domínio é feito pelo aluno na Aula 08.

---

## Sobre as aulas de instalação (A07 e A14)

As boxes do Vagrant já vêm com o sistema operacional instalado. Isso significa que:

- a **Aula 07** pode ser conduzida como **configuração inicial pós-instalação** do Windows Server;
- a **Aula 14** pode ser conduzida como **configuração inicial pós-instalação** do Ubuntu Server;
- se o professor quiser manter a instalação do zero, pode criar uma VM separada no VirtualBox usando a ISO oficial e deixar o Vagrant para as aulas seguintes.

O importante é que o aluno saiba explicar as etapas de instalação, mesmo que a box já esteja pronta.

---

## Solução de problemas

| Sintoma | Causa provável | Solução |
| :--- | :--- | :--- |
| `vagrant up` falha ao conectar no Windows | Box ainda inicializando ou WinRM indisponível | Aumentar `boot_timeout` ou rodar `vagrant reload dc01` |
| VMs não se enxergam | Adaptadores em redes diferentes | Conferir se todas usam `rede-nexatech` |
| Linux sem internet | NAT ausente ou DNS quebrado | Conferir o primeiro adaptador (NAT) e o DNS |
| Windows muito lento | RAM insuficiente | Fechar programas ou aumentar `vb.memory` |
| Erro de licença no Windows | Box de avaliação expirada | Atualizar a box ou usar imagem licenciada |
| Snapshot não restaura | VirtualBox com snapshot filho | Apagar snapshots na ordem inversa ou recriar a VM |

---

## Validação recomendada

Antes de aplicar em sala, o professor deve rodar:

```bash
vagrant validate
vagrant up
vagrant status
vagrant winrm dc01 -c "hostname"
vagrant ssh lnx01 -c "hostname && ip -4 addr"
```

E testar:

1. `ping 192.168.10.10` a partir da LNX01;
2. `ping 192.168.10.20` a partir do DC01;
3. `ping 192.168.10.100` a partir do DC01;
4. resolução de nomes após configurar o DNS;
5. snapshot e restauração de uma VM.

---

## Relação com o projeto integrador

O laboratório é a base técnica do projeto da NexaTech. As evidências geradas nas VMs (prints, comandos, configurações e testes) devem ser guardadas no portfólio do grupo e usadas na defesa final da Aula 24.

> Voltar para o [README do repositório](../README.md).
