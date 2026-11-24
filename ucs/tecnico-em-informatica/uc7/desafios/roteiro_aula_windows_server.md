# Roteiro de Aula Prática --- Windows Server: Grupos, Usuários, Partição e Compartilhamento de Pastas

## 1. Identificação

-   **Tema:** Introdução à administração do Windows Server
-   **Ambiente:** Oracle VM VirtualBox
-   **Sistema:** Windows Server (versão disponibilizada pelo professor)
-   **Modalidade:** Aula prática em laboratório
-   **Pré-requisitos:** Conhecimentos básicos de sistemas operacionais e
    máquinas virtuais

## 2. Objetivos

Ao final da atividade, o estudante deverá ser capaz de:

-   Criar e configurar uma máquina virtual no VirtualBox.
-   Instalar o Windows Server.
-   Identificar e configurar discos e partições.
-   Criar uma partição de dados de 5 GB (unidade D:).
-   Criar grupos e usuários locais.
-   Organizar pastas por setor.
-   Compartilhar pastas na rede.
-   Configurar permissões de compartilhamento e NTFS.
-   Testar o acesso aos compartilhamentos a partir de uma máquina
    cliente.

## 3. Cenário

Uma organização possui três setores: **Financeiro**, **Gerência** e
**Secretaria**. O servidor deverá armazenar documentos de cada setor em
pastas separadas. Cada setor terá um grupo local e um usuário associado.
O acesso às pastas será concedido ao grupo correspondente.

  ----------------------------------------------------------------------------------------
  Setor             Grupo local       Usuário           Pasta
  ----------------- ----------------- ----------------- ----------------------------------
  Financeiro        G_Financeiro      financeiro        D:\\Compartilhamento\\Financeiro

  Gerência          G_Gerencia        gerencia          D:\\Compartilhamento\\Gerencia

  Secretaria        G_Secretaria      secretaria        D:\\Compartilhamento\\Secretaria
  ----------------------------------------------------------------------------------------

> Os nomes e senhas podem ser adaptados pelo professor. Para o
> laboratório, use senhas de teste e não reutilize senhas pessoais.

## 4. Recursos necessários

-   Computador com VirtualBox instalado.
-   ISO do Windows Server.
-   **Três máquinas virtuais clientes** com Windows 10 ou Windows 11 (podem ser criadas a partir de uma VM-base clonada).
-   Pelo menos 8 GB de RAM no computador físico (recomendado, conforme
    disponibilidade).
-   Espaço livre para os discos virtuais.

## 5. Parte A --- Criar a máquina virtual

1.  Abra o VirtualBox.
2.  Clique em **Novo**.
3.  Nomeie a VM como `SRV-ARQUIVOS`.
4.  Selecione a ISO do Windows Server.
5.  Configure memória RAM e CPUs de acordo com os recursos disponíveis.
6.  Crie um disco rígido virtual de **40 GB**.
7.  Finalize a criação da máquina virtual.
8.  Confira as configurações de rede. Para comunicação com a VM cliente,
    use uma configuração de rede adequada ao laboratório, como **Rede
    Interna** ou **Host-Only**. Se necessário, o professor poderá usar
    uma segunda placa em modo NAT para acesso à Internet.

## 6. Parte B --- Instalar o Windows Server

1.  Inicie a VM.
2.  Selecione idioma, formato de hora e teclado.
3.  Clique em **Instalar agora**.
4.  Selecione a edição indicada pelo professor.
5.  Aceite os termos de licença.
6.  Selecione **Instalação personalizada**.
7.  Escolha o disco virtual de 40 GB e instale o sistema na partição
    destinada ao sistema operacional (C:).
8.  Aguarde a instalação e reinicializações.
9.  Defina a senha da conta Administrador.
10. Entre no Windows Server.

> **Observação sobre a partição D:** o Windows Server precisa de espaço
> suficiente para o sistema operacional, atualizações e arquivos
> temporários. Por isso, não reserve apenas 5 GB para a partição do
> sistema. Instale o sistema em uma partição maior e, depois, crie a
> partição de dados de 5 GB usando o espaço disponível do disco virtual
> de 40 GB.

## 7. Parte C --- Criar a partição D: de 5 GB

### Usando o Gerenciamento de Disco

1.  No Windows Server, pressione `Win + R`.
2.  Digite `diskmgmt.msc` e pressione Enter.
3.  Localize o disco virtual de 40 GB.
4.  Se houver espaço não alocado de pelo menos 5 GB, clique com o botão
    direito nele e selecione **Novo Volume Simples**.
5.  Caso não exista espaço não alocado suficiente:
    -   Clique com o botão direito na unidade C:.
    -   Selecione **Diminuir Volume**.
    -   Informe o espaço a diminuir para criar aproximadamente 5 GB.
6.  No assistente de Novo Volume Simples:
    -   Use o tamanho desejado para a partição de dados (5 GB).
    -   Atribua a letra **D:**.
    -   Formate com **NTFS**.
    -   Use o rótulo `DADOS`.
7.  Conclua o assistente.
8.  Confirme no Explorador de Arquivos que existe a unidade `D:`.

> O tamanho exibido pode variar ligeiramente devido à conversão entre GB
> e GiB e ao espaço ocupado pelas partições de sistema.

## 8. Parte D --- Criar grupos locais

### Pela interface gráfica

1.  Abra o **Server Manager**.
2.  Acesse **Tools (Ferramentas) → Computer Management (Gerenciamento do
    Computador)**.
    -   Alternativamente, pressione `Win + R`, digite `compmgmt.msc` e
        pressione Enter.
3.  Navegue até **Local Users and Groups → Groups**.
4.  Clique com o botão direito em **Groups** e selecione **New Group**.
5.  Crie os seguintes grupos:

  Nome do grupo    Descrição
  ---------------- ------------------------------------
  `G_Financeiro`   Acesso à pasta do setor Financeiro
  `G_Gerencia`     Acesso à pasta do setor Gerência
  `G_Secretaria`   Acesso à pasta do setor Secretaria

6.  Clique em **Create** para cada grupo.

## 9. Parte E --- Criar usuários locais

1.  Em **Computer Management**, navegue até **Local Users and Groups →
    Users**.
2.  Clique com o botão direito em **Users** e selecione **New User**.
3.  Crie os usuários:

  Nome de usuário   Nome completo        Setor
  ----------------- -------------------- ------------
  `financeiro`      Usuário Financeiro   Financeiro
  `gerencia`        Usuário Gerência     Gerência
  `secretaria`      Usuário Secretaria   Secretaria

4.  Defina uma senha para cada usuário.
5.  Configure as opções de senha conforme a orientação do professor. Em
    laboratório, pode-se desmarcar a exigência de alteração de senha no
    próximo logon, caso isso facilite os testes.
6.  Clique em **Create** e depois **Close**.

## 10. Parte F --- Associar usuários aos grupos

1.  Acesse **Local Users and Groups → Groups**.
2.  Abra as propriedades do grupo `G_Financeiro`.
3.  Clique em **Add**.
4.  Digite `financeiro` e clique em **Check Names**.
5.  Confirme e aplique.
6.  Repita para os demais grupos:

  Grupo            Usuário membro
  ---------------- ----------------
  `G_Financeiro`   `financeiro`
  `G_Gerencia`     `gerencia`
  `G_Secretaria`   `secretaria`

7.  Confira se cada usuário pertence ao grupo correto.

## 11. Parte G --- Criar a estrutura de pastas na unidade D:

No Explorador de Arquivos, abra `D:` e crie a seguinte estrutura:

``` text
D:\
└── Compartilhamento
    ├── Financeiro
    ├── Gerencia
    └── Secretaria
```

Passos:

1.  Abra a unidade `D:`.
2.  Crie a pasta `Compartilhamento`.
3.  Dentro dela, crie `Financeiro`, `Gerencia` e `Secretaria`.
4.  Opcionalmente, crie um arquivo de texto de teste em cada pasta, por
    exemplo `Documento_Financeiro.txt`, `Documento_Gerencia.txt` e
    `Documento_Secretaria.txt`.

## 12. Parte H --- Configurar permissões NTFS

As permissões NTFS são configuradas na aba **Security (Segurança)** das
propriedades da pasta. Elas controlam o acesso aos arquivos e pastas no
sistema de arquivos.

### Exemplo: pasta Financeiro

1.  Clique com o botão direito em `D:\\Compartilhamento\\Financeiro`.
2.  Selecione **Properties (Propriedades)**.
3.  Abra a aba **Security (Segurança)**.
4.  Clique em **Edit (Editar)**.
5.  Clique em **Add (Adicionar)**.
6.  Digite `G_Financeiro` e clique em **Check Names**.
7.  Confirme o grupo.
8.  Conceda as permissões necessárias, por exemplo **Modify
    (Modificar)**, **Read & execute (Ler e executar)**, **List folder
    contents (Listar conteúdo)** e **Read (Ler)**, conforme a
    necessidade.
9.  Para uma atividade de acesso restrito, revise as entradas existentes
    e remova permissões que concedam acesso indevido a outros grupos,
    sem remover inadvertidamente `SYSTEM` ou administradores.
10. Aplique as alterações.

Repita o procedimento:

  Pasta          Grupo autorizado
  -------------- ------------------
  `Financeiro`   `G_Financeiro`
  `Gerencia`     `G_Gerencia`
  `Secretaria`   `G_Secretaria`

> Para simplificar a atividade, conceda **Modificar** ao grupo de cada
> setor. Mantenha `SYSTEM` e os administradores com as permissões
> administrativas necessárias. Verifique também as permissões herdadas
> da pasta pai.

## 13. Parte I --- Compartilhar as pastas

Cada pasta será compartilhada separadamente.

### Exemplo: compartilhar Financeiro

1.  Clique com o botão direito na pasta
    `D:\\Compartilhamento\\Financeiro`.
2.  Selecione **Properties (Propriedades)**.
3.  Abra a aba **Sharing (Compartilhamento)**.
4.  Clique em **Advanced Sharing (Compartilhamento Avançado)**.
5.  Marque **Share this folder (Compartilhar esta pasta)**.
6.  Defina o nome do compartilhamento como `Financeiro`.
7.  Clique em **Permissions (Permissões)**.
8.  Remova `Everyone` caso esteja presente e não seja necessário para o
    exercício.
9.  Adicione `G_Financeiro`.
10. Conceda as permissões de compartilhamento planejadas (por exemplo,
    **Change (Alteração)** e **Read (Leitura)** para permitir criação e
    edição de arquivos).
11. Confirme as janelas.

Repita para as outras pastas:

  Caminho local                        Nome do compartilhamento   Grupo
  ------------------------------------ -------------------------- ----------------
  `D:\\Compartilhamento\\Financeiro`   `Financeiro`               `G_Financeiro`
  `D:\\Compartilhamento\\Gerencia`     `Gerencia`                 `G_Gerencia`
  `D:\\Compartilhamento\\Secretaria`   `Secretaria`               `G_Secretaria`

### Caminhos de rede esperados

Se o servidor tiver o nome `SRV-ARQUIVOS`, os compartilhamentos poderão
ser acessados por:

``` text
\\SRV-ARQUIVOS\Financeiro
\\SRV-ARQUIVOS\Gerencia
\\SRV-ARQUIVOS\Secretaria
```

Se o servidor estiver usando o IP `192.168.10.2`, os caminhos serão:

``` text
\\192.168.10.2\Financeiro
\\192.168.10.2\Gerencia
\\192.168.10.2\Secretaria
```

## 14. Parte J — Desativar temporariamente o Firewall do Windows Server (laboratório)

Para facilitar os testes de compartilhamento de pastas neste laboratório, o professor orientará a desativação temporária do Firewall do Windows Server.

> **Aviso de segurança:** desativar o firewall reduz a proteção do servidor. Faça isso somente em uma rede isolada de laboratório e durante a aula. Ao finalizar, reative o firewall. Em ambientes reais, o recomendado é manter o firewall habilitado e liberar somente as regras necessárias, como compartilhamento de arquivos e impressoras.

### Pela interface gráfica

1. No Windows Server, abra o **Server Manager**.
2. Acesse **Tools (Ferramentas) → Windows Defender Firewall with Advanced Security (Firewall do Windows Defender com Segurança Avançada)**.
3. Na janela do Firewall, clique com o botão direito em **Windows Defender Firewall with Advanced Security on Local Computer**.
4. Selecione **Properties (Propriedades)**.
5. Nas abas **Domain Profile**, **Private Profile** e **Public Profile**, altere **Firewall state (Estado do firewall)** para **Off (Desativado)**, conforme orientação do professor.
6. Clique em **Apply (Aplicar)** e **OK**.

### Pelo PowerShell (como Administrador)

Para desativar o firewall nos três perfis:

```powershell
Set-NetFirewallProfile -Profile Domain,Private,Public -Enabled False
```

Para reativá-lo ao final do laboratório:

```powershell
Set-NetFirewallProfile -Profile Domain,Private,Public -Enabled True
```

### Verificar o estado do firewall

```powershell
Get-NetFirewallProfile | Select-Object Name, Enabled
```

Registre no relatório que o firewall foi desativado temporariamente para os testes de conectividade e compartilhamento, e que deverá ser reativado ao término da atividade.

## 15. Parte K --- Preparar as três máquinas virtuais clientes

Nesta etapa, serão utilizadas três VMs com Windows 10 ou Windows 11. Todas deverão conseguir se comunicar com o servidor `192.168.10.2`.

### Criar as máquinas clientes

1.  Instale uma VM cliente com Windows 10 ou Windows 11, ou prepare uma VM-base com o sistema já instalado.
2.  Desligue a VM-base antes de cloná-la.
3.  No VirtualBox, use **Clonar** e crie três máquinas:
    - `CLI01`
    - `CLI02`
    - `CLI03`
4.  Selecione a opção de gerar novos endereços MAC para as placas de rede (ou mantenha a opção equivalente de reinicializar os endereços MAC).
5.  Inicie cada VM e confirme que cada uma possui um nome de computador diferente. Se necessário, renomeie o computador para `CLI01`, `CLI02` e `CLI03` e reinicie.
6.  Configure as três VMs na mesma rede virtual utilizada pelo servidor (Rede Interna ou Host-Only, conforme a configuração do laboratório).
7.  Confirme que as três máquinas clientes conseguem se comunicar com o servidor.

> Se não houver recursos de memória ou processamento para executar as três VMs simultaneamente, os testes podem ser realizados uma VM por vez, mantendo as três VMs criadas e identificadas.

### Testar conectividade em cada cliente

Em cada uma das VMs (`CLI01`, `CLI02` e `CLI03`):

1.  Abra o CMD.
2.  Execute:

``` cmd
ping 192.168.10.2
```

3.  Se o ping não responder, verifique a configuração de rede das VMs e
    o Firewall do Windows. O ping pode estar bloqueado pelo firewall
    mesmo quando o compartilhamento está funcionando.
4.  Repita o teste nas outras duas máquinas clientes.

## 16. Parte L --- Testar os compartilhamentos

### Teste 1 --- Usuário Financeiro

1.  Pressione `Win + R`.
2.  Digite:

``` text
\\192.168.10.2\Financeiro
```

3.  Quando solicitado, informe:
    -   **Usuário:** `SRV-ARQUIVOS\\financeiro` ou
        `192.168.10.2\\financeiro`, conforme a tela aceitar;
        alternativamente, use `financeiro` se o Windows identificar
        corretamente o servidor.
    -   **Senha:** senha criada no servidor.
4.  Crie um arquivo de texto na pasta.
5.  Confirme que o arquivo foi criado.

### Teste 2 --- Usuário Gerência

Antes de trocar de usuário, encerre conexões SMB anteriores no cliente.
No CMD:

``` cmd
net use
```

Para remover conexões existentes:

``` cmd
net use * /delete /y
```

Se houver credenciais persistentes salvas para o IP ou nome do servidor,
verifique:

``` cmd
cmdkey /list
```

Remova uma entrada, se ela existir, usando o destino exato exibido:

``` cmd
cmdkey /delete:192.168.10.2
```

Acesse:

``` text
\\192.168.10.2\Gerencia
```

Autentique-se com o usuário `gerencia` e teste a criação de arquivo.

### Teste 3 --- Usuário Secretaria

Repita a limpeza das conexões, acesse:

``` text
\\192.168.10.2\Secretaria
```

Autentique-se com `secretaria` e teste a criação de arquivo.

## 17. Parte M --- Testes de acesso negado

Os estudantes devem testar se cada usuário consegue acessar as pastas
dos outros setores.

  Usuário utilizado   Financeiro        Gerência          Secretaria
  ------------------- ----------------- ----------------- -----------------
  `financeiro`        Deve acessar      Deve ser negado   Deve ser negado
  `gerencia`          Deve ser negado   Deve acessar      Deve ser negado
  `secretaria`        Deve ser negado   Deve ser negado   Deve acessar

> Se um usuário conseguir acessar uma pasta de outro setor, revise as
> permissões de compartilhamento e NTFS. A permissão efetiva será
> limitada pela configuração mais restritiva entre elas.

## 18. Parte N --- Realizar os testes nas três máquinas clientes

O objetivo desta etapa é verificar o acesso aos compartilhamentos a partir de **três computadores clientes diferentes**, utilizando as credenciais dos três setores em cada cliente. Assim, serão realizados nove testes de autenticação e autorização.

### Organização dos testes

- `CLI01`: testar os usuários `financeiro`, `gerencia` e `secretaria`.
- `CLI02`: testar os usuários `financeiro`, `gerencia` e `secretaria`.
- `CLI03`: testar os usuários `financeiro`, `gerencia` e `secretaria`.

Em cada cliente, o aluno deverá acessar os três compartilhamentos, um de cada vez, informando as credenciais correspondentes. O usuário utilizado para autenticar no compartilhamento é o usuário local criado no Windows Server; não é necessário entrar no Windows Cliente com essa conta.

### Procedimento para cada teste

1.  Na VM cliente escolhida, abra o Explorador de Arquivos ou pressione `Win + R`.
2.  Digite o caminho do compartilhamento que será testado, por exemplo:

```text
\192.168.10.2\Financeiro
```

3.  Na janela de autenticação, informe o usuário do setor correspondente. Se necessário, utilize o formato `SRV-ARQUIVOS\financeiro` (substituindo pelo usuário correto).
4.  Informe a senha definida no servidor.
5.  Verifique se o acesso foi permitido ou negado conforme a matriz de permissões.
6.  Para trocar de usuário e testar o mesmo servidor com outra credencial, encerre as conexões SMB da sessão atual no CMD:

```cmd
net use * /delete /y
```

7.  Verifique se ainda há credenciais persistentes:

```cmd
cmdkey /list
```

8.  Se houver uma credencial para `192.168.10.2`, remova-a usando o destino exatamente como aparece na listagem:

```cmd
cmdkey /delete:192.168.10.2
```

9.  Repita o procedimento para o próximo usuário e para os demais compartilhamentos.
10. Faça os testes nas três VMs clientes. Registre os resultados na tabela abaixo.

> **Importante:** não basta fechar a janela do Explorador de Arquivos para encerrar uma sessão de rede. O comando `net use * /delete /y` encerra as conexões de rede da sessão atual. Se o Windows mantiver uma credencial persistente, verifique-a com `cmdkey /list`. A credencial pode estar registrada pelo nome do servidor em vez do IP; nesse caso, remova o destino exato listado.

### Matriz de testes — três clientes e três usuários

| Máquina cliente | Credencial utilizada | Pasta Financeiro | Pasta Gerencia | Pasta Secretaria |
|---|---|---|---|---|
| CLI01 | financeiro | Deve acessar | Deve ser negado | Deve ser negado |
| CLI01 | gerencia | Deve ser negado | Deve acessar | Deve ser negado |
| CLI01 | secretaria | Deve ser negado | Deve ser negado | Deve acessar |
| CLI02 | financeiro | Deve acessar | Deve ser negado | Deve ser negado |
| CLI02 | gerencia | Deve ser negado | Deve acessar | Deve ser negado |
| CLI02 | secretaria | Deve ser negado | Deve ser negado | Deve acessar |
| CLI03 | financeiro | Deve acessar | Deve ser negado | Deve ser negado |
| CLI03 | gerencia | Deve ser negado | Deve acessar | Deve ser negado |
| CLI03 | secretaria | Deve ser negado | Deve ser negado | Deve acessar |

### Desafio adicional

Após concluir os nove testes, escolha uma das VMs clientes e tente acessar uma pasta de outro setor sem informar as credenciais corretas. Registre a mensagem apresentada pelo Windows e explique por que o acesso foi negado.

## 19. Comandos úteis para a aula

### Ver conexões de rede

``` cmd
net use
```

### Encerrar conexões de rede da sessão

``` cmd
net use * /delete /y
```

### Ver credenciais armazenadas

``` cmd
cmdkey /list
```

### Remover credencial salva pelo IP (se existir)

``` cmd
cmdkey /delete:192.168.10.2
```

### Testar conectividade

``` cmd
ping 192.168.10.2
```

### Acessar compartilhamento pelo Executar

``` text
\\192.168.10.2\Financeiro
```

## 20. Registro dos resultados

Preencha a tabela após realizar os testes nas três VMs clientes:

| Cliente | Usuário | Pasta testada | Resultado observado | Observações |
|---|---|---|---|---|
| CLI01 | financeiro | Financeiro / Gerencia / Secretaria | | |
| CLI01 | gerencia | Financeiro / Gerencia / Secretaria | | |
| CLI01 | secretaria | Financeiro / Gerencia / Secretaria | | |
| CLI02 | financeiro | Financeiro / Gerencia / Secretaria | | |
| CLI02 | gerencia | Financeiro / Gerencia / Secretaria | | |
| CLI02 | secretaria | Financeiro / Gerencia / Secretaria | | |
| CLI03 | financeiro | Financeiro / Gerencia / Secretaria | | |
| CLI03 | gerencia | Financeiro / Gerencia / Secretaria | | |
| CLI03 | secretaria | Financeiro / Gerencia / Secretaria | | |

## 21. Questões para reflexão

1.  Qual é a função de um Windows Server em uma rede?
2.  Qual a diferença entre usuário e grupo?
3.  Por que é recomendado conceder permissões a grupos em vez de
    configurar cada usuário individualmente?
4.  Qual a finalidade de criar uma partição de dados separada da unidade
    C:?
5.  Qual a diferença entre permissão de compartilhamento e permissão
    NTFS?
6.  Por que um usuário de um setor não deve acessar a pasta de outro
    setor?
7.  O que acontece quando o Windows Cliente mantém uma sessão de rede
    autenticada?
8.  Qual comando permite visualizar as conexões de rede?
9.  Qual comando permite encerrar conexões de rede?
10. O que deve ser revisado quando um usuário consegue acessar uma pasta
    que deveria estar restrita?

## 22. Checklist de entrega

-   [ ] Máquina virtual criada no VirtualBox.
-   [ ] Windows Server instalado.
-   [ ] Disco virtual de 40 GB configurado.
-   [ ] Partição D: de 5 GB criada e formatada em NTFS.
-   [ ] Grupos `G_Financeiro`, `G_Gerencia` e `G_Secretaria` criados.
-   [ ] Usuários `financeiro`, `gerencia` e `secretaria` criados.
-   [ ] Usuários associados aos grupos corretos.
-   [ ] Pasta `D:\\Compartilhamento` criada.
-   [ ] Subpastas Financeiro, Gerencia e Secretaria criadas.
-   [ ] Permissões NTFS configuradas.
-   [ ] Três compartilhamentos configurados.
-   [ ] Três VMs clientes criadas e identificadas como CLI01, CLI02 e CLI03.
-   [ ] Conectividade verificada nas três VMs clientes.
-   [ ] Os três usuários testados em cada uma das três VMs clientes.
-   [ ] Testes realizados nas máquinas clientes.
-   [ ] Acesso permitido e negado verificado.
-   [ ] Capturas de tela anexadas ao relatório.

## 23. Evidências que devem constar no relatório

1.  Configuração da VM no VirtualBox.
2.  Windows Server instalado e nome do servidor.
3.  Gerenciamento de Disco mostrando C: e D: (D: com aproximadamente 5
    GB).
4.  Grupos locais criados.
5.  Usuários locais criados.
6.  Associação dos usuários aos grupos.
7.  Estrutura de pastas na unidade D:.
8.  Permissões NTFS de cada pasta.
9.  Configuração de compartilhamento de cada pasta.
10. Configuração das três VMs clientes no VirtualBox.
11. Teste de conectividade de cada cliente com o servidor.
12. Acesso bem-sucedido com cada usuário em cada cliente.
13. Exemplos de acesso negado a pastas de outros setores nas três VMs.

------------------------------------------------------------------------

**Conclusão:** Nesta prática, o estudante instalou um Windows Server em
uma máquina virtual, organizou o armazenamento em partições, criou
grupos e usuários locais, estruturou pastas por setor, configurou
compartilhamentos e permissões e verificou o controle de acesso
utilizando uma máquina cliente.
