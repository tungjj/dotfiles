# Auto start tmux
if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi

tmux source ~/.config/tmux/.tmux.conf
export EDITOR=/usr/bin/nvim
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_COLOR="green"

# Plugins
plugins=( 
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-z
    sudo
    )

source $ZSH/oh-my-zsh.sh

# Cursor Beam zsh
_fix_cursor() {
   echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)


