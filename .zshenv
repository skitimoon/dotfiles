export PATH="$PATH:`yarn global bin`"

# added by Miniconda3 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/skitimoon/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/skitimoon/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/skitimoon/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/skitimoon/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
