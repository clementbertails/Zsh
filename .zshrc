## Options section
# setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
# bindkey -v
#export KEYTIMEOUT=1
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

# End of lines added by compinstall
autoload -Uz compinit
_comp_options+=(globdots) # With hidden files
compinit


export EDITOR=vim

set -o vi


# Theming section  
autoload -U compinit colors zcalc
compinit -d
colors

printf $'\E]2;Term\a'

# enable substitution for prompt
setopt prompt_subst

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-r

source ~/.zsh_files/sources.zsh
# bind UP and DOWN arrow keys to history substring search
# adds error if moved ?>
zmodload zsh/terminfo


setopt AUTO_PUSHD           # Push the current dir to stack
setopt PUSHD_IGNORE_DUPS    # dont store duplicates
setopt PUSHD_SILENT         # dont print

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

fpath=(~/Gits/zsh-completions/src $fpath)

#source /mnt/AWE~/Gits/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#[ -f "~/.ghcup/env" ] && source "~/.ghcup/env" # ghcup-env
[ -f "~/.ghcup/env" ] && source "~/.ghcup/env" # ghcup-env

export PATH="$PNPM_HOME:$PATH"
