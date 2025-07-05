# ✅ Dotfiles Checklist – Setup Arch Linux: Hyprland + Kitty + Neovim + Zsh

---

## 🧱 Fase 1 — Base do Sistema

- [x] Sistema atualizado com `pacman -Syu`
- [x] Drivers de GPU, rede e som configurados
- [x] PipeWire e PulseAudio funcionando
- [x] Locale, timezone, teclado configurados
- [x] Diagnóstico com `inxi` concluído

---

## 🎨 Fase 2 — Interface Gráfica: Hyprland + Waybar

- [x] Hyprland instalado e funcionando
- [x] Wallpapers com `swww` + rotação automática
- [x] Waybar top configurada do zero
- [x] Adicionado módulos: playerctl, CPU, RAM, volume, network, bluetooth, updates
- [x] Customizações com emojis e ícones nerd font
- [x] Segunda Waybar (bottom) criada e centralizada (WIP)
- [x] TLP integrado via módulo custom
- [x] Notificações com `mako` configuradas
- [x] Scripts de status customizados incluídos

---

## 🧰 Fase 3 — Terminal + Shell

- [x] Kitty instalado e configurado como terminal padrão
- [x] Tmux removido da inicialização
- [x] Tema CRT retrô aplicado no Kitty (fundo preto + verde terminal)
- [x] Fonte pixelada (Cozette) instalada
- [x] Tema Tokyo Night adicionado e modularizado
- [x] Zsh instalado e funcionando
- [x] Spaceship Prompt ativado
- [x] Plugins: zsh-autosuggestions, zsh-syntax-highlighting
- [x] `.zshrc` reorganizado e modularizado com `.zshrc.d/`

---

## 🧠 Fase 4 — Neovim Setup

- [ ] Neovim instalado (`>= 0.9`)
- [ ] Ferramentas base instaladas: `ripgrep`, `fd`, `node`, `npm`
- [ ] Plugin manager `lazy.nvim` configurado
- [ ] Estrutura `init.lua`, `lua/`, `core/`, etc.
- [ ] Tema Tokyo Night (`tokyonight.nvim`)
- [ ] Treesitter com linguagens principais
- [ ] LSPs com `mason.nvim`
- [ ] Autocompletion com `nvim-cmp`
- [ ] Snippets com `luasnip`
- [ ] File Explorer (`nvim-tree` ou `neo-tree`)
- [ ] Formatadores (`null-ls` ou `conform.nvim`)
- [ ] Git com `gitsigns`, `lazygit`

---

## ⚡ Fase 5 — Produtividade + Avançado

- [ ] Terminal flutuante com `toggleterm.nvim`
- [ ] GitHub Copilot com `copilot.lua`
- [ ] Debugger com `nvim-dap` e `dap-ui`
- [ ] Interface LSP refinada (`noice.nvim`, `lsp_lines`)
- [ ] Sessão e projeto com `project.nvim`, `persistence.nvim`
- [ ] Anotações e agenda com `neorg` ou `zk`
- [ ] Plugins de produtividade (`which-key`, `comment`, `surround`)

---

## ☁️ Fase 6 — Repositório GitHub + Setup Automation

- [x] Projeto criado em https://github.com/programadoramauri
- [x] Repositório `dotfiles` iniciado
- [x] Organização por pasta (`.config/`, `.zshrc.d/`, etc.)
- [x] Checklist adicionado ao `CHECKLIST.md`
- [ ] Script `setup.sh` criado com instalação de pacotes
- [ ] README documentado com instruções de uso
- [ ] Licença e badges adicionados
- [ ] GitHub Project (Board) vinculado ao repositório

---

## 🎯 Extras planejados

- [ ] `bootstrap.sh` para auto-instalação com symlinks (via `stow`)
- [ ] Seleção dinâmica de temas para terminal (`kitty themes`)
- [ ] Wallpapers temáticos retrô/jogos 90s
- [ ] Integrar notificações com sons (`canberra`, `paplay`)
- [ ] Publicar artigo/post sobre o setup

