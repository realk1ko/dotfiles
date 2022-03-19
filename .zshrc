# history settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# colors (on some systems)
CLICOLOR=1

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

# more colors
ls --color=auto > /dev/null 2>&1 && alias ls='ls --color=auto' || alias ls='ls -G'
diff --color=auto > /dev/null 2>&1 && alias diff='diff --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
