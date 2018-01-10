#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export JAVA_8_HOME=`/usr/libexec/java_home -v1.8`

alias java8='export JAVA_HOME=$JAVA_8_HOME'

export ACTIVEMQ_OPTS="-Xmx512M -Dorg.apache.activemq.UseDedicatedTaskRunner=false"  

export JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home"

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*:*:vim:*' completer _complete _ignored
zstyle :compinstall filename '/home/xocoatl/.zshrc'
autoload -Uz compinit promptinit colors
unsetopt correct_all
setopt clobber
compinit

# docker
export DOCKER_HOST="unix:///var/run/docker.sock"

# ssh keep password
#ssh-add -K ~/.ssh/id_rsa

alias mci="mvn clean install"
alias ll="ls -lah"
alias dockerrm="docker ps -a | awk '{print \$1}' | xargs docker rm -v"
alias dockerkill="docker ps -a | awk '{print \$1}' | xargs docker kill"
