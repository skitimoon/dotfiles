typeset -U PATH path
export PATH="$HOME/.local/bin:$PATH"

export LESS="Fij.5JW"

export WORDCHARS="${WORDCHARS/\/}|"
export EDITOR=nvim

# NNN
export NNN_BMS='d:~/Documents;D:~/Downloads;t:/tmp'
export NNN_PLUG='p:preview-tui;u:getplugs'
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export ICONLOOKUP=1
if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_zsh
fi
