export ZSH="$HOME/.oh-my-zsh"
plugins=(git)

# Theme
ZSH_THEME="geometry/geometry"
source $ZSH/oh-my-zsh.sh
export GEOMETRY_GIT_COLOR_CLEAN=#c1faa0
export GEOMETRY_SEPARATOR=" :: "

# Aliases
source ~/.aliases

# Extending Path
export PATH="$PATH:$HOME/.scripts/"
