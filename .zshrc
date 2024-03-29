# Lines configured by zsh-newuser-install
setopt appendhistory autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install

alias ls=eza

eval "$(pyenv init -)"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
### End of Zinit's installer chunk

zinit wait lucid for \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        zdharma-continuum/fast-syntax-highlighting \
    atload"zicompinit; zicdreplay" blockf \
        zsh-users/zsh-completions \
    atload"!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions

zinit wait lucid for \
    OMZL::completion.zsh \
    OMZL::directories.zsh \
    OMZL::functions.zsh \
    OMZP::colored-man-pages \
    OMZP::poetry \
    OMZP::fzf \
    atload"alias l='ls -lhF auto ';alias la='ls -lahF auto '" OMZP::common-aliases \

zinit snippet OMZL::history.zsh

zinit ice from"gh-r" as"program" atload'!eval "$(starship init zsh)"'
zinit light starship/starship

# # The following lines were added by compinstall
# zstyle :compinstall filename '$HOME/.zshrc'

# autoload -Uz compinit
# compinit
# # End of lines added by compinstall
