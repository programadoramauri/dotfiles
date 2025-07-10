# ====================================
# ⚙️ Zsh Options – Qualidade de vida
# ====================================

# Diretórios
setopt AUTO_CD            # digite caminho direto
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Completar dentro da palavra e ir pro fim
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

# Globbing e segurança
setopt EXTENDED_GLOB
unsetopt CASE_GLOB
setopt NO_HUP
setopt NO_BG_NICE

# Comentários e correção
setopt INTERACTIVE_COMMENTS
setopt CORRECT

# UX
setopt NO_BEEP
