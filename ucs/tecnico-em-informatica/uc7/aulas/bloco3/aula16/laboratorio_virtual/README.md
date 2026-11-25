# Roteiro Prático Passo a Passo — Aula 16: Roteamento IP, Encaminhamento e NAT

## 1. Identificação
- **Tema:** Roteamento entre Sub-redes, IP Forwarding e Conceito de Gateway
- **Ambiente:** VirtualBox (Simulação de 2 Redes Distintas)

## 2. Objetivos
1. Visualizar tabelas de roteamento com `route print` (Windows) e `ip route` (Linux).
2. Compreender a métrica e a rota padrão `0.0.0.0/0`.
3. Adicionar rotas estáticas manuais para alcançar redes remotas.
4. Testar o encaminhamento de pacotes entre adaptadores de rede.

## 3. Passo a Passo Detalhado
1. **Inspecionar a Tabela de Rotas no Windows:**
   ```powershell
   route print -4
   ```
   - Localize a linha `0.0.0.0 | 0.0.0.0` e identifique o Gateway padrão da interface.
2. **Adicionar uma Rota Estática de Teste:**
   - Para alcançar a rede de filiais `10.50.0.0/24` através do gateway `192.168.10.1`:
     ```powershell
     route add 10.50.0.0 mask 255.255.255.0 192.168.10.1 -p
     ```
   - O parâmetro `-p` torna a rota persistente após reinicializações.
3. **Rastrear o Caminho de Saltos (Hop-by-Hop):**
   ```powershell
   tracert -d 8.8.8.8
   ```
   - Observe que o primeiro salto é obrigatoriamente o seu Gateway local.
