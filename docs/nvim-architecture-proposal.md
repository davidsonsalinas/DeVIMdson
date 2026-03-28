# Etapa 1 — Arquitetura proposta (Neovim)

## Arquitetura da configuração

Estrutura modular em camadas:

- `init.lua`: ponto de entrada, bootstrap e carregamento.
- `lua/core/`: opções globais, keymaps base e autocmds.
- `lua/plugins/`: especificações do `lazy.nvim` separadas por domínio (LSP, UI, Git, edição, navegação).
- `lua/config/`: configurações avançadas por subsistema (LSP, completion, formatting, linting, treesitter, git, theme).
- `after/ftplugin/`: ajustes finos por linguagem quando necessário (ex.: markdown, gitcommit).

Princípio: **separar o “o que instalar” (`plugins/*`) do “como funciona” (`config/*`)**.

## Estratégia de plugins

- Gerenciador: `lazy.nvim` com lazy-loading por evento (`BufReadPre`, `VeryLazy`, `InsertEnter`, comandos).
- Base LSP: `mason.nvim` + `mason-lspconfig.nvim` + `nvim-lspconfig`.
- Autocomplete: `nvim-cmp` + `LuaSnip` + fontes LSP/path/buffer.
- Formatação: `conform.nvim` (orquestração por filetype, format-on-save previsível).
- Linting: `nvim-lint` (execução por eventos e sob demanda).
- Navegação: `telescope.nvim`, `neo-tree.nvim`, `aerial.nvim`, `trouble.nvim`.
- Git: `gitsigns.nvim`, `neogit`, `diffview.nvim`, `git-conflict.nvim`.
- UI: `lualine`, `bufferline`, `which-key`, `noice`, `nvim-notify`, `indent-blankline`, `dressing`.
- Syntax: `nvim-treesitter` (+ textobjects quando útil).

## Decisões técnicas principais

1. **Python como prioridade**: adotar `ruff` como eixo central (lint + import sort + parte da análise), com `black` como formatter principal e `mypy` para type checking rigoroso. Isso reduz latência e duplicação de ferramentas mantendo qualidade.
2. **JS/TS/React/Node**: `typescript-language-server` + `eslint` (diagnósticos e code actions) + `prettier` para formatação consistente do ecossistema web. `tailwindcss-language-server` e `emmet-ls` para produtividade frontend.
3. **Go**: `gopls` como servidor principal (navegação/refactors) e `golangci-lint` opcional no linting para projetos maiores.
4. **Conflitos de formatação evitados**: desligar formatting de LSPs que conflitem e centralizar tudo no `conform.nvim`.
5. **Observabilidade de problemas**: diagnostics em `trouble`, quickfix e Telescope para fluxo de code review local e pair programming.
6. **Tema Omni/Dracula-like**: base em tema estável (Dracula/derivado) + override de highlights para aproximar paleta Omni (roxos, cianos, rosas) sem sacrificar legibilidade.

## Trade-offs relevantes

- **Ruff + Black + Mypy** vs stack clássica (`flake8` + `isort` + `black` + `mypy`):
  - ganho: performance, menos processos, configuração mais simples;
  - trade-off: migração de regras já customizadas no `flake8`.
- **Prettier + ESLint** vs Biome-only:
  - ganho: compatibilidade máxima com projetos existentes;
  - trade-off: mais uma ferramenta no toolchain.
- **UI rica (Noice/Bufferline/Which-key)**:
  - ganho: UX superior para uso diário e pair programming;
  - trade-off: pequeno custo de inicialização mitigado por lazy-loading.
- **Neo-tree + Telescope**:
  - ganho: combina exploração estrutural com busca fuzzy poderosa;
  - trade-off: duas superfícies de navegação (resolvido com keymaps consistentes).
