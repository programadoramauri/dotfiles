# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ======= Powerlevel10k ===========
# Carregar o tema powerlevel10k
if [[ -f ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k/powerlevel10k.zsh-theme
fi

# ======= Configurações básicas do Zsh ===========

# Ativar completions automáticas
autoload -Uz compinit
compinit

# Ativar correção ortográfica para comandos errados
setopt CORRECT

# Histórico
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# Prompt para novo comando na linha de baixo
setopt PROMPT_SP

# Ativar cor no terminal para comandos como ls
autoload -U colors && colors

# ======= Aliases básicos ========

alias update='sudo pacman -Syu'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lha'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'

# ======= Funções úteis =========

cdf() {
  cd "$1" && ls
}

mkcd() {
  mkdir -p "$1" && cd "$1"
}

search() {
  grep -rnw '.' -e "$1"
}

ds() {
  du -sh "$1"
}

update_clean() {
  sudo pacman -Syu && sudo pacman -Sc
}

# ======= Ambiente PATH (se precisar adicionar) =======
# export PATH="$HOME/bin:$PATH"

# ======= Outras opções que você pode querer =======

# Ativa histórico compartilhado entre várias sessões
setopt SHARE_HISTORY

# Desativa o beep
setopt NO_BEEP

# Usa menos digitação para algumas correções de comando
setopt AUTO_CD

# Final do arquivo

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# RubyGems
PATH="/home/jimmy/.local/share/gem/ruby/3.4.0/bin${PATH:+:${PATH}}"; export PATH;

# Perl
PATH="/home/jimmy/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jimmy/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jimmy/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jimmy/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jimmy/perl5"; export PERL_MM_OPT;

