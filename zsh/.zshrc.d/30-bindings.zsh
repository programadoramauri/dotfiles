# Ctrl+R com fzf
fzf-history-widget() {
  BUFFER=$(fc -l -n 1 | fzf --tac +s --height 40%) && CURSOR=$#BUFFER
  zle redisplay
}
zle -N fzf-history-widget
bindkey '^R' fzf-history-widget
