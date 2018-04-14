# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export ANDROID_HOME=/home/mike/android_sdk


alias vim='vim -p'

export ZSH=/home/mike/.oh-my-zsh

ZSH_THEME="af-magic"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
	command-not-found 
	debian
	history
	history-substring-search
  git
	git-flow
	jsontools
	vim
)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

# Aliases
alias v="vim -p"

bindkey -v

#Functions
	# Custom cd
	c() {
		cd $1;
		ls;
	}

	alias cd="c"


###-tns-completion-start-###
if [ -f /home/mike/.tnsrc ]; then 
    source /home/mike/.tnsrc 
fi
###-tns-completion-end-###
