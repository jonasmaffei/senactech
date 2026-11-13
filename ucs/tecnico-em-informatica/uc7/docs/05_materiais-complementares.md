# Materiais Complementares - UC7

## Bibliografia da UC

### Básica

- BARRETT, Daniel J. **Linux Guia Prático: Comandos Essenciais**. 4. ed. São Paulo: Novatec Editora, 2024.
- PERROTT, S. **Windows Server 2019 & PowerShell All-in-One For Dummies**. John Wiley & Sons, 2019.
- THOMPSON, M. A. **Microsoft Windows Server 2016: fundamentos**. São Paulo: Érika, 2017.

### Complementar

- COMER, D. E. **Interligação de Redes com TCP/IP**. Rio de Janeiro: Campus, 2015.
- MARTINI, Luciano Andress; MAIEVES, Gustavo Turin. **Linux para Servidores - Da instalação à virtualização**. Santa Cruz do Rio Pardo: Ed. Viena, 2013.
- NETO, Manoel Veras de Sousa. **Computação em Nuvem - Nova Arquitetura de TI**. Rio de Janeiro: Brasport, 2015.
- VERAS, Manoel. **Virtualização - Tecnologia Central do Datacenter**. 2. ed. Rio de Janeiro: Brasport, 2016.
- RAMOS, Atos. **Administração de Servidores Linux**. Rio de Janeiro: Editora Ciência Moderna, 2013.

---

## Documentação oficial

### Windows Server e Microsoft

- Windows Server: https://learn.microsoft.com/windows-server/
- Active Directory Domain Services: https://learn.microsoft.com/windows-server/identity/ad-ds/active-directory-domain-services
- DNS Server: https://learn.microsoft.com/windows-server/networking/dns/dns-top
- DHCP Server: https://learn.microsoft.com/windows-server/networking/technologies/dhcp/dhcp-top
- Group Policy: https://learn.microsoft.com/windows-server/identity/ad-ds/manage/group-policy/group-policy
- IIS: https://learn.microsoft.com/iis/
- PowerShell: https://learn.microsoft.com/powershell/
- Windows Admin Center: https://learn.microsoft.com/windows-server/manage/windows-admin-center/overview
- Certificações Microsoft: https://learn.microsoft.com/certifications/

### Linux

- Ubuntu Server: https://ubuntu.com/server/docs
- systemd: https://systemd.io/
- BIND 9: https://bind9.readthedocs.io/
- Nginx: https://nginx.org/en/docs/
- Apache HTTP Server: https://httpd.apache.org/docs/
- Linux Foundation Training: https://training.linuxfoundation.org/

### Redes, segurança e monitoramento

- Wireshark: https://www.wireshark.org/docs/
- Cisco NetAcad: https://www.netacad.com/
- OWASP: https://owasp.org/
- CIS Benchmarks: https://www.cisecurity.org/cis-benchmarks
- Zabbix: https://www.zabbix.com/documentation
- Prometheus: https://prometheus.io/docs/
- Grafana: https://grafana.com/docs/
- ITIL: https://www.axelos.com/best-practice-solutions/itil
- COBIT: https://www.isaca.org/resources/cobit
- ANPD/LGPD: https://www.gov.br/anpd/
- VirtualBox: https://www.virtualbox.org/manual/
- pfSense: https://docs.netgate.com/pfsense/en/latest/
- Hyper-V: https://learn.microsoft.com/virtualization/hyper-v-on-windows/

---

## Material de referência do professor

A reorganização da UC usou como referência os PDFs de Linux e Windows do professor que já ministrou a UC:

- **Linux:** instalação do servidor Linux (referência), APT, SSH, usuários/grupos/permissões, NAT com iptables, DHCP, DNS (BIND9), Apache/MariaDB/PHP e atividade final. O laboratório da UC usa **Ubuntu Server 24.04 LTS**.
- **Windows:** Active Directory, configuração básica, BIOS/RAID, controlador de domínio, DNS, DHCP, UOs/grupos/usuários, GPOs, roteamento e acesso remoto, quotas/FSRM e serviços do Windows Server.

Esses materiais orientaram o bloco de **redes/roteamento/pfSense**, as aulas de **RAID/UOs/quotas** e os laboratórios de **DNS, DHCP e web**. O laboratório da UC foi consolidado em **Ubuntu Server 24.04 LTS** para a aplicação Apache/PHP e o banco de dados.

---

## Trilhas de certificação sugeridas

| Área | Certificação | Uso na UC |
| :--- | :--- | :--- |
| Windows Server | Microsoft AZ-800 / AZ-801 | Aulas 08-15 |
| Linux | LPIC-1 ou RHCSA | Aulas 20-29 |
| Redes | Cisco CCNA | Aulas 01-04, 16-19 |
| Firewall | pfSense (Netgate) | Aulas 16-19 |
| Segurança | CompTIA Security+ (opcional) | Aulas 28, 29, 31 |

> Certificação não substitui prática: use o laboratório da UC como portfolio.
