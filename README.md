# Neovim config (Python-first, full-stack)

Estrutura modular com `lazy.nvim`, LSP robusto, formatting on save, linting por linguagem, navegação de codebase e Git avançado.

## Estrutura

- `init.lua`
- `lua/core`: bootstrap, opções, keymaps e autocmds
- `lua/plugins`: instalação e lazy-loading por domínio
- `lua/config`: comportamento por subsistema (LSP, UI, dashboard, etc.)
- `after/ftplugin`: ajustes por filetype

## Dependências externas

- Neovim >= 0.10
- `git`, `ripgrep`, `fd`, `make`, `xclip`/`wl-clipboard`
- Node.js + npm
- Python tools: `ruff`, `black`, `mypy`
- JS/TS tools: `prettier`, `eslint_d`
- Go tools: `gofumpt`/`gofmt`, `goimports`, `golangci-lint`
- Lua formatter: `stylua`
- XML formatter: `xmlformat`
- Dicionários do sistema para `en_US` e `pt_BR`

## Instalação

1. Copie esta árvore para `~/.config/nvim`.
2. Abra o Neovim e rode `:Lazy sync`.
3. Rode `:Mason` e confirme ferramentas LSP.
4. Valide com `:checkhealth`.

## Fluxo

- Formatação no save: `conform.nvim`
- Linting em eventos (`BufWritePost`, `BufReadPost`, `InsertLeave`) e manual com `<leader>ll`
- Diagnostics centralizados em `Trouble` (`<leader>xx`)
- Format manual: `<leader>f`
- Git: `Neogit` (`<leader>gg`), `Diffview` (`<leader>gd`)


## Tela inicial

A tela inicial usa `alpha-nvim` com banner customizado `DeVIMdson` no lugar do texto padrão do Nvim.


## Tutorial básico

Veja `docs/devimdson-tutorial-basico.md` para um guia prático de navegação e uso diário.
