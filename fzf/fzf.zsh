# Atalhos fzf
export FZF_DEFAULT_OPTS="
  --height 40%
  --layout=reverse
  --border
  --preview 'bat --style=numbers --color=always {}'
"

# fuzzy cd
fzf-cd-widget() {
  local dir
  dir=$(find . -path '*/.git' -prune -o -type d -print | fzf +m) && cd "$dir"
}
zle -N fzf-cd-widget
bindkey '^G' fzf-cd-widget

