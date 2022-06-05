# history settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# prompt
PROMPT='%B%{%F{blue}%}%n%{%f%}%b@%B%{%F{red}%}%m%{%f%}%b:%~%(!.#.$) '

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
diff --color=auto -v > /dev/null 2>&1 && alias diff='diff --color=auto'
grep --colour=auto > /dev/null 2>&1 && alias grep='grep --colour=auto'
egrep --colour=auto > /dev/null 2>&1 && alias egrep='egrep --colour=auto'
fgrep --colour=auto > /dev/null 2>&1 && alias fgrep='fgrep --colour=auto'

# completion
autoload -U compinit
compinit
