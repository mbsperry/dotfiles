export PATH=$PATH:/Users/mbsperry/scripts:/usr/games/bin:/Users/mbsperry/.gem/ruby/1.8/bin:/Users/mbsperry/jargon/scripts

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

# Set bash for VI mode!
set -o vi

# EC2 API setup
# export JAVA_HOME="$(/usr/libexec/java_home)"
# export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
# export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
# export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.5.2.5/jars"
# export EC2_KEYPAIR="ecwest"
# export EC2_URL=https://ec2.us-west-2.amazonaws.com

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
