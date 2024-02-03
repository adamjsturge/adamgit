# Comment out if you haven't installed Neovim
export EDITOR=nvim
export VISUAL="$EDITOR"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
# Establishing custom commands below
alias edit="sudo nvim ~/.zshrc"

#git ammend
alias gcommit="git commit --amend --no-edit"

gpush(){
gsafe
fpush $(git rev-parse --abbrev-ref HEAD)
}

gup(){
gsafe
git push -u origin $(git rev-parse --abbrev-ref HEAD)
}

gadd(){
git status
git add .
git status
}

gbit(){
echo $3
gout $3
}

gout(){
gcheck
}

gmap(){
git checkout -b $1
}

gmap4(){
gmap $4
}

gcheck(){
git checkout $1
}

gsafe(){
echo $(git rev-parse --abbrev-ref HEAD)
}

greset(){
git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)
}

gpull(){
gfetch
greset
}

gfetch(){
git fetch
}

fpush(){
git push origin $1 --force-with-lease
}