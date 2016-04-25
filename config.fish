# set
set -gx JAVA_HOME /usr/libexec/java_home -v 1.7
set -gx JAVA_HOME8 /usr/libexec/java_home -v 1.8

set -gx GOROOT /usr/local/opt/go/libexec
set -gx GOPATH $HOME
# set -gx PATH $PATH:$GOROOT/bin:$GOPATH/bin
# set -gx PATH /usr/local/bin:$PATH

# git alias
function gs
  command git status
end

function gco
  command git checkout $argv
end

function gps
  command git push origin $argv
end

function gpl
  command git pull
end

function gcpr
  command git commit --allow-empty -m 'create pull request'
end

function gm
  command git merge --no-ff $argv
end

# util alias
function nkfso
  command nkf -s --overwrite $argv
end

