# Laboratório Virtual - Aula 04: Hardware de servidor, armazenamento e virtualização

**Ambiente:** Vagrant + VirtualBox  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Especificação técnica do servidor e das VMs, com justificativa de custo e capacidade.

---

## Objetivo

Especificar hardware de servidor e projetar um laboratório virtualizado compatível com o projeto.

## VMs desta aula

DC01 e LNX01 (criação das VMs e da rede interna).

## Antes de começar

Se ainda não subiu o laboratório, execute na raiz do repositório:

```bash
cd laboratorio_virtual
vagrant up
vagrant status
```

> O primeiro `vagrant up` baixa as boxes e pode demorar bastante. As boxes do Windows são grandes.

## Roteiro

1. Comparar duas configurações de servidor com custo e desempenho
2. Criar as VMs de Windows Server e Ubuntu Server no laboratório
3. Configurar a rede interna do laboratório
4. Registrar uma linha de base com snapshot antes das próximas aulas

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```bash
cd laboratorio_virtual
vagrant status
vagrant up dc01 lnx01
vagrant winrm dc01 -c "ipconfig"
vagrant ssh lnx01 -c "ip -4 addr"
vagrant snapshot save dc01 baseline-dc01
vagrant snapshot save lnx01 baseline-lnx01
```

## Observações

- Mantenha o snapshot da aula anterior antes de iniciar novas configurações.

## Relação com o projeto

Escolhe a plataforma física e virtual que sustentará todas as instalações seguintes.

**O que fica em aberto:** Com o laboratório pronto, é preciso um plano de implantação para não configurar tudo de forma desordenada.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula04.html) e a [atividade](../atividade.md).
