# Tutorial básico de navegação — DeVIMdson

Este guia rápido mostra como navegar e trabalhar no dia a dia com a configuração **DeVIMdson**.

## 1) Primeiros passos

1. Abra o Neovim dentro do projeto: `nvim .`
2. Na tela inicial (`alpha-nvim`), você pode:
   - `e`: novo arquivo
   - `f`: buscar arquivo
   - `g`: buscar texto no projeto
   - `q`: sair

## 2) Como lembrar os atalhos (keymaps)

- Use `<leader>?` para abrir um **lembrete de keymaps** (atalhos disponíveis).
- Leader padrão: **barra de espaço**.
- Exemplo: `<leader>w` significa `Espaço + w`.

## 3) Navegação no projeto

### Buscar arquivos e texto

- `<leader>ff`: find files
- `<leader>fg`: live grep (busca por conteúdo)
- `<leader>fr`: arquivos recentes
- `<leader>fb`: buffers abertos

### Estrutura e símbolos

- `<leader>e`: árvore de arquivos (Neo-tree)
- `<leader>o`: outline/símbolos (Aerial)
- `<leader>fs`: símbolos do arquivo atual
- `<leader>fS`: símbolos do workspace

## 4) Edição do dia a dia

- `<leader>w`: salvar
- `<leader>q`: fechar janela
- `<leader>bd`: fechar buffer
- `<leader>sv`: split vertical
- `<leader>sh`: split horizontal
- `<leader>tt`: terminal flutuante
- `<Esc>`: limpar highlight de busca

## 5) LSP (navegação inteligente)

- `gd`: ir para definição
- `gr`: referências
- `gi`: implementação
- `K`: hover/documentação
- `<leader>rn`: renomear símbolo
- `<leader>ca`: code actions

## 6) Diagnóstico, lint e formatação

- `<leader>f`: formatar arquivo
- `<leader>ll`: rodar lint manualmente
- `]d` e `[d`: próximo/anterior diagnóstico
- `<leader>xx`: abrir lista de diagnósticos (Trouble)
- `<leader>xq`: abrir quickfix list (Trouble)

## 7) Fluxo de Git no dia a dia

- `<leader>gg`: abrir Neogit
- `<leader>gd`: abrir Diffview
- `<leader>gD`: fechar Diffview
- `<leader>gH`: histórico do arquivo atual

### Hunks (arquivo atual)

- `]h` / `[h`: próximo/anterior hunk
- `<leader>hs`: stage hunk
- `<leader>hr`: reset hunk
- `<leader>hp`: preview do hunk
- `<leader>hb`: blame da linha

## 8) Escrita e documentação

Para Markdown, Git commit e textos:

- Spell check em **Português (pt_BR)** e **Inglês (en_US)** já habilitado.

## 9) Rotina recomendada (curta)

1. Abra projeto com `nvim .`
2. Use `<leader>ff` para encontrar arquivo.
3. Navegue com `gd` / `gr` para entender código.
4. Faça alterações e rode `<leader>f`.
5. Veja problemas com `<leader>xx`.
6. Revise diff com `<leader>gd` antes de commit.

---

Se quiser, o próximo passo é criar uma **cola personalizada por linguagem** (Python, TS/React e Go) com os comandos que você mais usa.
