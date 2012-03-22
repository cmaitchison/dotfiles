alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gca="git commit -a"
alias gco="git checkout"
alias gd="git diff --word-diff"
alias gdc="git diff --cached"
alias gs="git status"
alias gps="git push"
alias gpl="git pull --rebase"
alias git-svn="git svn"
alias gsr="git svn rebase"
alias gsd="git svn dcommit"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias dir=ls
alias ll="ls -al"

alias be="bundle exec"
alias bec='bundle exec cucumber'
alias ber='bundle exec rake'
alias r='rake'
alias log='tail -f log/development.log'
alias metal='bundle exec rspec spec/metal'

alias work="cd ~/Projects/me/homehelpnow"
alias g='grep -i'  #case insensitive grep
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders$
alias top='top -o cpu'
alias systail='tail -f /var/log/system.log'
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"
