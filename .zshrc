# history settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# prompt
PROMPT='%{%F{blue}%}%n%{%f%}@%{%F{red}%}%m%{%f%}:%~%(!.#.$) '

# various options
setopt nomatch
unsetopt autocd beep extendedglob inc_append_history share_history notify

# use Emacs style keybindings
bindkey -e

# include user binaries in path
path+=("$HOME/.local/bin")

# safe delete and copy
alias rm='rm -i'
alias cp='cp -i'

# shortcuts for ls
alias ll='ls -la'
alias la='ls -a'
ls -Z > /dev/null 2>&1 && alias lz='ls -laZ'

# colors (for macOS)
export CLICOLOR=1

# color aliases
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# color aliases depending on system
if [ "$(uname)" != "Darwin" ]; then
  alias diff='diff --color=auto'
fi

# completion
autoload -U compinit
compinit
