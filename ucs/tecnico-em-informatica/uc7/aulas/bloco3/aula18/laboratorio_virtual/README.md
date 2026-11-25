# Roteiro Prático Passo a Passo — Aula 18: pfSense: Regras de Firewall, NAT e Liberação de Internet

## 1. Identificação
- **Tema:** Regras de Firewall e Tradução de Endereços (NAT de Saída)
- **Console:** Interface Web do pfSense (`http://192.168.10.1`)

## 2. Objetivos
1. Criar regras de liberação de tráfego (Pass) e bloqueio (Block).
2. Criar Aliases de rede para simplificar regras de segurança.
3. Configurar o NAT de saída (Outbound NAT) para prover internet aos clientes da LAN.
4. Monitorar logs de tráfego em tempo real no painel do pfSense.

## 3. Passo a Passo Detalhado
1. **Configurar Aliases (Grupos de IPs/Portas):**
   - Acesse **Firewall &rarr; Aliases &rarr; IP**.
   - Clique em **+ Add**:
     - **Name:** `Servidores_Criticos`
     - **Type:** Host(s)
     - **IPs:** `192.168.10.2` (DC01), `192.168.10.20` (APP01), `192.168.10.30` (DB01).
     - Salve e clique em **Apply Changes**.
2. **Criar Regra de Bloqueio de Ping Externo (ICMP):**
   - Acesse **Firewall &rarr; Rules &rarr; LAN**.
   - Clique no botão **Add (Seta para cima - prioridade alta)**:
     - **Action:** Block
     - **Protocol:** ICMP
     - **Destination:** Any
     - **Description:** `Bloquear ping para a Internet`
   - Salve e aplique. Tente pingar `8.8.8.8` no cliente e comprove o bloqueio!
3. **Liberar Navegação Web (HTTP/HTTPS e DNS):**
   - Crie uma regra permitindo protocolo TCP/UDP nas portas `80, 443, 53`.
4. **Auditoria de Logs em Tempo Real:**
   - Acesse **Status &rarr; System Logs &rarr; Firewall**.
   - Visualize os pacotes verdes (permitidos) e vermelhos (bloqueados) gerados pelo tráfego da rede.
