defaults write com.apple.finder AppleShowAllFiles TRUE
source ~/.bash_aliases

set -o vi
if [ "$PS1" ]; then

  red='\[\e[31m\]'
  green='\[\e[32m\]'
  yellow='\[\e[33m\]'
  cyan='\[\e[36m\]'
  grey='\[\e[0;37m\]'
  reset_color='\[\e[0m\]'
  set_title='\[\e]0;\]$(basename "$PWD")\[\007\]'

  prompt="$green$"

  if test `id -un` = root; then
    prompt="$red#"
  fi	
  
  function prompt-gem-path() {
  ruby_version=`echo $GEM_HOME | sed -n /@/p | sed -e 's/\/.*\///'`
    if test -n "$ruby_version"; then
      echo "$ruby_version"
    fi
  }
  function prompt-git-user() {
    git_user=`git config --get user.name`
    if test -n "$git_user" && test -n "`prompt-git-branch`"; then
      echo " '$git_user'"
    fi
  }
  
  function prompt-git-branch() {
    git_branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/^* //'`
    if test -n "$git_branch"; then
      echo " [$git_branch]"
    fi
  }

	PS1="${set_title}
${green}(\t) ${yellow}\w${grey}\$(prompt-git-branch)${cyan}\$(prompt-git-user) ${yellow}\$(prompt-gem-path)
${prompt} ${reset_color}"

fi
