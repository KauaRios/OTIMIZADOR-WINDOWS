# ⚡ Otimizador do Kauã (System Optimizer Tool)

Um utilitário de automação em **Batch Script** projetado para realizar a manutenção preventiva, limpeza de arquivos temporários e ajustes finos (tweaks) no Windows para ganho de performance em jogos e produtividade.

---

### 🛠️ Módulos e Funcionalidades

O script foi modularizado para atacar diferentes gargalos do sistema:

1. **Limpeza Profunda (`:LIMPAR`)**: 
   - Exclusão de arquivos `.tmp`, `.log`, `.old` e caches de sistema (`Prefetch`).
   - Limpeza de logs do CBS e DISM.
   - Flush de DNS para renovar a tabela de resolução de nomes.
2. **Otimização de Rede (`:RESET`)**:
   - Reset do catálogo Winsock e da pilha TCP/IP (útil para resolver instabilidades de conexão).
3. **Ajustes de Registro (Tweaks)**:
   - **Gaming Tweaks**: Aplicação de `TCPNoDelay` e `TcpAckFrequency` para reduzir a latência (ping).
   - **Input Lag**: Otimização da taxa de repetição do teclado via Registro.
4. **Gerenciamento de Energia**:
   - Ativação do plano "Desempenho Máximo" (Ultimate Performance) via GUID oculto do Windows.

---

### 🚀 Como Executar

> **Atenção:** Devido às modificações no Registro (`HKLM` e `HKCU`) e exclusão de pastas protegidas, o script **DEVE** ser executado como **Administrador**.

1. Baixe o arquivo `.bat`.
2. Clique com o botão direito > **Executar como Administrador**.
3. Selecione a opção desejada no menu interativo.

---

### ⚠️ Notas de Desenvolvimento (WIP)

- **Status**: Beta (Em desenvolvimento).
- **Compatibilidade**: Testado em Windows 10 e 11.
- **Segurança**: Recomenda-se criar um Ponto de Restauração antes de aplicar as otimizações de Registro.

---
