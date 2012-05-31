export PATH=$PATH:/Users/mbsperry/scripts:/usr/games/bin:/Users/mbsperry/.gem/ruby/1.8/bin

#	Make Nice Terminal colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export PS1='\[\e[30;1m\]\u@mbook:\[\e[0;32m\][\w]\[\e[0m\]$ '

#	Basic shell setup
alias ls='ls -pF'

#Vim Setup
export EDITOR='mvim'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Jargon research aliases
alias jargon='dbacl -c ~/myjargon/jargon2 -c ~/myjargon/slate1 -c ~/myjargon/switch1'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
