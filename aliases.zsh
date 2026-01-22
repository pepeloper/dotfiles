# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="omz reload"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias timestamp="date +%s"
alias ip="curl -s ipinfo.io | jq -r '.ip'"
alias ports="lsof -i -P -n | grep LISTEN"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias projects="cd $HOME/projects"

# Editor
alias c.="cursor ."
alias code.="cursor ."

# Laravel
alias pa="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias seed="php artisan db:seed"
alias serve="php artisan serve"
alias routes="php artisan route:list"
alias queues="php artisan queue:work"
alias horizon="php artisan horizon"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias test="pest --no-coverage"
alias pf="pest --filter"
alias coverage="pest --coverage"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias dev="npm run dev"
alias build="npm run build"
alias preview="npm run preview"

# Git
alias gst="git status"
alias gb="git branch --sort=-committerdate"
alias gc="git checkout"
alias gcb="git checkout -b"
alias main="git checkout main && git pull"
alias gl="git log --oneline --decorate --color"
alias glog="git log --graph --oneline --all"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force-with-lease"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias prune="git fetch --prune"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"

# Database
alias dbfresh="php artisan migrate:fresh --seed"
alias dbreset="php artisan migrate:reset && php artisan migrate --seed"
alias dbseed="php artisan db:seed"
