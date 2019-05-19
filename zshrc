# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH
#export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export ANDROID_HOME=$HOME/android_sdk/
export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"




alias vim='vim -p'

export ZSH=$HOME/.oh-my-zsh

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
if [ -f $HOME/.tnsrc ]; then 
    source $HOME/.tnsrc 
fi
###-tns-completion-end-###

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/mike/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/mike/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/mike/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/mike/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/mike/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /home/mike/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

###-tns-completion-start-###
if [ -f /home/mike/.tnsrc ]; then 
    source /home/mike/.tnsrc 
fi
###-tns-completion-end-###
