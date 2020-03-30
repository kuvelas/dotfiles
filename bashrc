alias tmux="tmux -2"
export TERM="xterm-256color"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$HOME/Android/Sdk/tools
alias vim='vim -p'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###-tns-completion-start-###
if [ -f /home/mike/.tnsrc ]; then 
    source /home/mike/.tnsrc 
fi
###-tns-completion-end-###
HISTTIMEFORMAT="%d/%m/%y %T "
