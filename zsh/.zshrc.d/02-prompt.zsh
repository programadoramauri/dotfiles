# Spaceship Prompt – 90s Neon Edition

# Ordem dos segmentos
SPACESHIP_PROMPT_ORDER=(
  dir         # diretório atual
  git         # branch e status Git
  node        # versão Node.js
  host        # hostname (útil em SSH)
  battery     # nível de bateria
  time        # relógio
  char        # símbolo de prompt
)

# Sem linha extra
SPACESHIP_PROMPT_ADD_NEWLINE=false

# Símbolos
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# Cores (neon style)
SPACESHIP_DIR_COLOR="blue"
SPACESHIP_GIT_STATUS_MODIFIED="yellow"
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_CHAR_COLOR_ERROR="red"
SPACESHIP_TIME_COLOR="yellow"
SPACESHIP_HOST_COLOR="magenta"
SPACESHIP_BATTERY_COLOR="cyan"

# Exibir hora
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT="%H:%M"

# Exibir hostname
SPACESHIP_HOST_SHOW=true

# Exibir bateria
SPACESHIP_BATTERY_SHOW=true
SPACESHIP_BATTERY_THRESHOLD=20
SPACESHIP_BATTERY_FULL_SYMBOL="⚡"
SPACESHIP_BATTERY_CHARGING_SYMBOL="🔌"
SPACESHIP_BATTERY_DISCHARGING_SYMBOL="–"

