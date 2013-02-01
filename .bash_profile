export PATH=$PATH:/Users/mbsperry/scripts:/usr/games/bin:/Users/mbsperry/.gem/ruby/1.8/bin:/Users/mbsperry/jargon/scripts:/ghar/bin

if [ -e ".local_bash" ]
then
  source .local_bash
fi

#	Make Nice Terminal colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export PS1='\[\e[30;1m\]\u@\h:\[\e[0;32m\][\w]\[\e[0m\]$ '

#	Basic shell setup
alias ls='ls -pF'

# Jargon research aliases
alias jargon='dbacl -c ~/myjargon/jargon2 -c ~/myjargon/slate1 -c ~/myjargon/switch1'

# Set bash for VI mode!
set -o vi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
