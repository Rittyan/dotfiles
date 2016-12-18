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
alias -g gco="git checkout"
alias -g gs="git status"
alias -g gcpr="git commit --allow-empty -m 'create pull request'"
alias -g gpl="git pull"
alias -g gm="git merge --no-ff"
alias -g gps="git push origin"
alias -g nkfso="nkf -s --overwrite"

export JAVA_HOME=`/usr/libexec/java_home -v "1.7"`
export JAVA_HOME8=`/usr/libexec/java_home -v "1.8"`

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PATH=/usr/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
#[[ -s "~/.gvm/bin/gvm-init.sh" ]] && source "~/.gvm/bin/gvm-init.sh"
#
## OPAM configuration
#. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
#
#export NVM_DIR="~/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#source dnvm.sh

export PATH=$HOME/.nodebrew/current/bin:$PATH
export CONSCRIPT_HOME="$HOME/.conscript"
export CONSCRIPT_OPTS="-XX:MaxPermSize=512M -Dfile.encoding=UTF-8"
export PATH=$CONSCRIPT_HOME/bin:$PATH
source ~/.phpbrew/bashrc
