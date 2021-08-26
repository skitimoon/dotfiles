# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install

alias ls=exa

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.local/bin:$PATH"
export WORDCHARS="${WORDCHARS/\/}|"
export EDITOR=nvim
export FZF_BASE="$HOME/miniconda3/share/fzf"
export LESS="Fij.5JW"

# NNN
export NNN_BMS='d:~/Documents;D:~/Downloads'
export NNN_PLUG='p:preview-tui'
export ICONLOOKUP=1
if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_zsh
fi

eval "$(pyenv init -)"

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit wait lucid for \
      atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        zdharma/fast-syntax-highlighting \
      blockf \
        zsh-users/zsh-completions \
      blockf \
        esc/conda-zsh-completion \
      atload"!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions

zinit wait lucid for \
      OMZ::lib/directories.zsh \
      OMZ::plugins/common-aliases/common-aliases.plugin.zsh \
      OMZ::plugins/fzf/fzf.plugin.zsh \
      OMZ::plugins/git/git.plugin.zsh \
      rupa/z

zinit ice wait lucid atclone"dircolors -b LS_COLORS > clrs.zsh" \
      atpull'%atclone' pick"clrs.zsh" nocompile'!' \
      atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zinit load trapd00r/LS_COLORS

zinit ice from"gh-r" as"program" atload'!eval $(starship init zsh)'
zinit light starship/starship

# # Load the pure theme, with zsh-async library that's bundled with it.
# zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
# zinit light sindresorhus/pure

# # The following lines were added by compinstall
# zstyle :compinstall filename '$HOME/.zshrc'

# autoload -Uz compinit
# compinit
# # End of lines added by compinstall
