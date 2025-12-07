#!/bin/bash

if grep -q 'alias ga="git add -p"' "$HOME/.bashrc"; then
		echo "Aliases already exist, skipping..."
		exit 0
fi

cat << 'EOF' >> ~/.bashrc

# Git shortcuts
alias ga="git add -p"
alias gc="git commit -m"
alias gp="git push"
alias gl="git pull"
alias gd="git diff"
alias gs="git status"
alias gss="git status --short"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"

EOF

echo "Aliases added to ~/.bashrc"
