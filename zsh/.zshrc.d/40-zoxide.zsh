
# Inicializa zoxide
eval "$(zoxide init zsh)"

# Sugestões de uso:
# z foo      → vai pro diretório que contém "foo"
# zi ~/projetos → idem
# zf         → fzf + zoxide
alias zf='zoxide query -ls | fzf --preview "exa -la --tree {} | head -100" | xargs -r zoxide add && cd $(zoxide query -l | fzf)'
