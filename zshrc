# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH
#export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export ANDROID_HOME=$HOME/android_sdk/
export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#(fortune |  cowsay -f tux) 2>/dev/null

alias vim='vim -p'
#alias dbeaver='~/build/dbeaver/product/standalone/target/products/org.jkiss.dbeaver.core.product/linux/gtk/x86_64/dbeaver/dbeaver'

eval $(thefuck --alias)

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

export PROMPT='%m%#'
export RPROMPT='%*'

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







# read .nvmrc and run nvm use if found
autoload -U add-zsh-hook
load-nvmrc() {
	local node_version="$(nvm version)"
	local nvmrc_path="$(nvm_find_nvmrc)"

	if [ -n "$nvmrc_path"  ]; then
		local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

		if [ "$nvmrc_node_version" = "N/A"  ]; then
			nvm install
		elif [ "$nvmrc_node_version" != "$node_version"  ]; then
			nvm use
		fi
	elif [ "$node_version" != "$(nvm version default)"  ]; then
		echo "Reverting to nvm default version"
		nvm use default
	fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc


HISTTIMEFORMAT="%d/%m/%y %T "
