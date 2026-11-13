# Laboratório VirtualBox - Aula 07: Planejamento, laboratório e plano diretor da rede

**Ambiente:** VirtualBox (criação manual das VMs)  
**Base comum:** [`laboratorio_virtual/`](../../../../laboratorio_virtual/README.md)  
**Entrega da aula:** Plano Diretor da Rede com cronograma, riscos, topologia, IPs e evidências do laboratório.

---

## Objetivo

Consolidar o plano de instalação e o plano diretor da rede, com a base do laboratório VirtualBox validada.

## VMs desta aula

CLI01 e CLI02 (já criadas na Aula 01); DC01, APP01 e DB01 serão instaladas nas aulas seguintes.

## Antes de começar

1. Abra o VirtualBox e confirme que as VMs da UC estão desligadas ou com snapshot.
2. Verifique se a rede interna `rede-nexatech` existe e está ligada à VM correta.
3. Registre o estado atual antes de alterar qualquer configuração.

## Roteiro

1. Criar a checklist de pré-instalação
2. Montar a matriz de riscos
3. Documentar a rede interna e o plano de IPs
4. Testar a comunicação entre CLI01 e CLI02 e tirar snapshot
5. Consolidar o plano diretor em um único documento

## Testes e evidências

- Registre prints ou saídas de comando de cada etapa.
- Anote as decisões de configuração e os valores usados (IPs, nomes, escopos, permissões).
- Teste o serviço de um cliente ou de outra VM sempre que possível.
- Atualize o documento do projeto integrador com o que foi feito.

## Comandos úteis

```powershell
ipconfig /all
ping 192.168.10.1
tracert 8.8.8.8
```

## Observações

- A rede interna não dá acesso à internet por si só; para isso use NAT/bridge ou o pfSense.

## Relação com o projeto

Entrega o plano diretor e a base do laboratório que sustentará a implantação.

**O que fica em aberto:** Com a rede planejada e o laboratório pronto, o próximo passo é instalar o Windows Server.

---

> Consulte também o [guia da aula](../README.md), a [apresentação](../apresentacao_aula07.html) e a [atividade](../atividade.md).
