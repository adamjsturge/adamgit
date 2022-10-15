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

gstore(){
gitbranch=$1
}

gpush(){
gsafe
fpush $gitbranch
}

gup(){
gsafe
git push -u origin $gitbranch
}

gadd(){
git status
git add .
git status
}

gnew(){
gstore $3
gfetch
gcheck
}

gget(){
gstore $1
gfetch
gcheck
}

gbit(){
echo $3
gout $3
}

gmap(){
gstore $1
git checkout -b $1 
}

gmap4(){
gmap $4
}

gout(){
gstore $1
gcheck
}

gcheck(){
git checkout $gitbranch
}

gsafe(){
echo $gitbranch
}

greset(){
git reset --hard origin/$gitbranch
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

superecho(){
echo $1 
}