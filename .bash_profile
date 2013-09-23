# Chef assumes that it owns this file.
# Additions to bash should be placed into $HOME/.bash_profile_includes/ with a .sh extension

for file in $(\ls -1 ${HOME}/.bash_profile_includes/*); do
  source $file;
done

PATH=/usr/local/bin:/usr/local/sbin:/usr:/opt/local/sbin:/opt/local/lib/postgresql84/bin:/usr/local/mysql/bin:$PATH
source ~/.bash_aliases

export PATH=$HOME/local/bin:$PATH

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad



function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
eval "$(rbenv init -)"
