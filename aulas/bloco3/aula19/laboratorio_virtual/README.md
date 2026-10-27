# Laboratório Virtual - Aula 19: Laboratório integrado e troubleshooting

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Registro de troubleshooting e relatório do ambiente integrado.

---

## Objetivo

Integrar serviços Windows e Linux e diagnosticar falhas comuns em um ambiente misto.

## VMs desta aula

DC01, LNX01 e CLI01.

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Resolver cenários de falha preparados pelo docente
2. Registrar sintoma, hipótese, teste e solução
3. Validar o ambiente integrado de ponta a ponta
4. Atualizar a documentação com as correções

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up dc01 lnx01 cli01
vagrant ssh lnx01
vagrant winrm dc01 -c "Get-Service"
vagrant winrm cli01 -c "ipconfig /all"
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Fecha o Bloco 3 provando que os dois sistemas operacionais funcionam juntos.

**O que fica em aberto:** O ambiente funciona, mas ainda não está sendo observado de forma contínua.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula19.html) e a [atividade](../atividade.md).
