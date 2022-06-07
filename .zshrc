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

# additional keybindings because zsh doesn't read /etc/inputrc
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" history-search-backward
bindkey "\e[6~" history-search-forward
bindkey "\e[3~" delete-char
bindkey "\e[2~" overwrite-mode
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[8~" end-of-line
bindkey "\eOc" forward-word
bindkey "\eOd" backward-word
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

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
