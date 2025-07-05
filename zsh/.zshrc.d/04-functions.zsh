mkcd() {mkdir -p "$1" && cd "$1";}
search() {grep -rnw . -e "$1";}
cdf() {cd "$1" && ls;}
