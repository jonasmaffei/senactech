# Aplicação de Teste - NexaTech Chamados

Aplicação PHP + MariaDB usada nas **Aulas 26 e 27** para validar, de ponta a ponta:

- instalação e configuração do **Apache + PHP** no `APP01`;
- instalação e configuração do **MariaDB** no `DB01`;
- criação de **banco, tabela, usuário e permissões**;
- conexão do PHP com o banco;
- acesso dos clientes `CLI01` e `CLI02` à aplicação.

---

## Arquitetura

| VM | Papel |
| :--- | :--- |
| **APP01** | Ubuntu Server com Apache + PHP e a aplicação |
| **DB01** | Ubuntu Server com MariaDB e o banco `nexatech_app` |
| **CLI01 / CLI02** | Clientes Windows 10 para acessar a aplicação |
| **FW01** | pfSense, roteamento e firewall |

Fluxo:

```text
CLI01/CLI02 -> http://192.168.10.20 (APP01) -> MariaDB em 192.168.10.30:3306 (DB01)
```

A aplicação lista e cadastra **chamados**. O endpoint `health.php` devolve JSON com o
status do PHP e do banco, servindo como teste de conexão.

---

## Estrutura

```text
aplicacao-teste/
  app/
    index.php
    config.php
    db.php
    health.php
    assets/style.css
    .env.example
  db/
    schema.sql
    seed.sql
  scripts/
    install-db.sh
    deploy-app.sh
    test-connection.sh
    check-db.sh
  README.md
```

---

## Pré-requisitos

- `APP01` e `DB01` com Ubuntu Server 24.04 e IPs `192.168.10.20` e `192.168.10.30`.
- Rede interna `rede-nexatech` configurada.
- Snapshots das VMs antes do deploy.
- Acesso root/sudo nas duas VMs.

> O repositório pode ser clonado dentro de cada VM ou copiado via `scp`/pasta compartilhada.
> No laboratório, copie a pasta `laboratorio_virtual/aplicacao-teste/` para as VMs.

---

## Passo 1 - Configurar o banco no DB01 (Aula 27)

No `DB01`:

```bash
cd aplicacao-teste
sudo ./scripts/install-db.sh
```

O script:

1. instala o `mariadb-server` e o `mariadb-client`;
2. habilita o serviço;
3. configura o `bind-address` para `192.168.10.30`;
4. cria o banco `nexatech_app`;
5. cria o usuário `app_nexatech` permitido apenas a partir de `192.168.10.20`;
6. concede `SELECT, INSERT, UPDATE, DELETE` no banco;
7. cria a tabela `chamados` e insere dados de exemplo;
8. libera a porta 3306 no `ufw` apenas para o `APP01`;
9. grava as credenciais em `/root/nexatech-db-credentials.txt`.

Valide a instalação:

```bash
sudo ./scripts/check-db.sh
```

O resultado esperado é `Resultado: OK` e a lista de permissões do usuário.

> Para definir a senha manualmente:
> ```bash
> sudo DB_PASSWORD='SenhaSegura123' ./scripts/install-db.sh
> ```
> Use apenas letras e números.

---

## Passo 2 - Publicar a aplicação no APP01 (Aulas 26 e 27)

No `APP01`, copie a senha do arquivo `/root/nexatech-db-credentials.txt` do `DB01` e rode:

```bash
cd aplicacao-teste
sudo DB_PASS='senha-gerada-no-db01' ./scripts/deploy-app.sh
```

O script:

1. instala Apache, PHP, `libapache2-mod-php`, `php-mysql` e cliente MariaDB;
2. configura o PHP (`display_errors=Off`, logs em `/var/log/php/nexatech-error.log`);
3. grava as credenciais em `/etc/nexatech/app.env` (`root:www-data`, `640`);
4. copia a aplicação para `/var/www/nexatech`;
5. cria o VirtualHost `app.nexatech.local`;
6. habilita o site e reinicia o Apache;
7. testa o `health.php` e a conexão com o banco.

> Na Aula 26, o banco ainda pode não existir. O deploy funciona e o `health.php` avisa
> que o banco está indisponível. Na Aula 27, após configurar o DB01, rode o deploy
> novamente com a senha correta.

---

## Passo 3 - Testar a conexão

No `APP01`:

```bash
sudo ./scripts/test-connection.sh
```

O teste verifica:

- Apache ativo;
- PHP CLI disponível;
- módulo `pdo_mysql`;
- arquivo de credenciais;
- resposta do `health.php`;
- conexão direta com o banco usando o usuário da aplicação.

Resultado esperado:

```text
== Resultado: OK ==
```

Também é possível testar manualmente:

```bash
curl -H "Host: app.nexatech.local" http://127.0.0.1/health.php
mysql -h 192.168.10.30 -u app_nexatech -p -e "SELECT COUNT(*) FROM chamados;" nexatech_app
```

---

## Passo 4 - Acessar pelos clientes

No `CLI01` e no `CLI02`, adicione ao arquivo `hosts` (como administrador):

```text
192.168.10.20  app.nexatech.local
```

No Windows:

```text
C:\Windows\System32\drivers\etc\hosts
```

Depois acesse:

```text
http://app.nexatech.local
```

Também funciona pelo IP:

```text
http://192.168.10.20
```

Teste o endpoint de saúde:

```text
http://app.nexatech.local/health.php
```

---

## O que validar na aplicação

- [ ] A página inicial abre no `CLI01` e no `CLI02`.
- [ ] O badge mostra **Banco: conectado**.
- [ ] Os três chamados de exemplo aparecem.
- [ ] É possível cadastrar um novo chamado.
- [ ] O `health.php` retorna `"status": "ok"`.
- [ ] O usuário `app_nexatech` conecta apenas a partir do `APP01`.
- [ ] O MariaDB não está exposto para a rede inteira.
- [ ] Os logs do Apache e do PHP não mostram erros de conexão.

---

## Comandos úteis

```bash
# DB01
sudo systemctl status mariadb
sudo mysql -e "SHOW DATABASES;"
sudo mysql -e "SHOW GRANTS FOR 'app_nexatech'@'192.168.10.20';"

# APP01
sudo systemctl status apache2
sudo tail -n 50 /var/log/apache2/nexatech-error.log
sudo tail -n 50 /var/log/php/nexatech-error.log
curl -H "Host: app.nexatech.local" http://127.0.0.1/health.php
```

---

## Segurança e limpeza

- As credenciais ficam em `/etc/nexatech/app.env`, fora do diretório web.
- O usuário do banco tem apenas os privilégios necessários.
- Não versione senhas, `.env` com valores reais ou exports de VM.
- Para refazer o laboratório, restaure o snapshot das VMs ou remova o banco/usuário no DB01.

---

## Relação com as aulas

| Aula | Uso |
| :--- | :--- |
| A26 - Servidor web Apache + PHP | Deploy do Apache/PHP e publicação da aplicação |
| A27 - Banco de dados e integração | Instalação do MariaDB, usuário, banco e conexão |
| A28 - Segurança | Revisão de permissões, logs e exposição do banco |
| A29 - Backup | Backup do banco e restauração |
| A30 - Monitoramento | Health check e disponibilidade da aplicação |
| A32 - Projeto integrador | Demonstração do fluxo completo |

> Voltar para o [laboratório virtual](../README.md).
