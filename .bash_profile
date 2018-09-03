# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Make Git branch a variable
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Shortcuts
alias ll='ls -al'
alias editgit='atom ~/.gitconfig'
alias editbash='atom ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim
alias josh=sudo

## Git commands
alias glg='git log'
alias gdff='git diff'
alias branch='git branch'
alias gst='git status'
alias gft='git fetch'
alias gpoh='git push origin head'
alias gp='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Git branch switching
alias master='git co master'
alias ghp='git co gh-pages'

## Switch repos
DIR=~/work
alias h='cd ~/'
alias w='cd ${DIR}'
alias bs='cd ${DIR}/bootstrap'

## Core GitHub apps
alias gh='cd ~/github'
alias gg='cd ~/github/github'

## Server guick starts
alias ss='script/server'
alias js='bundle exec jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'
alias gtest='testrb test/integration/bundle_test.rb'

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
