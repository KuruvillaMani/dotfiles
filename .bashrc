# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias {v,vi,vim}=nvim
alias py='python'
alias diff='diff --color'
alias grep='grep --color=always'

alias igputop='doas intel_gpu_top'
alias powertop='doas powertop'

# Stylised Bash Prompt 
PS1='\[\e[0;1;38;5;221m\][\[\e[0;1;38;5;25m\]\w\[\e[0;1;38;5;221m\]]\[\e[0;1;38;5;43m\]\$ \[\e[0m\]'

# Automatically cd when entering just a path
shopt -s autocd

# History append
shopt -s histappend

# vi mode
set -o vi

# Complete command names and file names
complete -cf doas man which

# Coloured man pages, bold text in cyan
export LESS="Dd+c"

# Ctrl + l to clear screen
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'
