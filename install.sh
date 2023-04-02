#!/bin/sh

# mount
ln -s /workspaces/.codespaces/.persistedshare/dotfiles $HOME/dotfiles

# source
echo "" >> $HOME/.zshrc
echo "source $HOME/dotfiles/zshrc" >> $HOME/.zshrc

# configured git
git config --global core.whitespace blank-at-eol,blank-at-eof
git config --global init.defaultbranch main
git config --global fetch.prune true
git config --global alias.addremove "add --all"
git config --global alias.gone "! git checkout main && git fetch -pa && git pull && git for-each-ref --format '%(refname:short) %(upstream:track)' awk '\$2 == \"[gone]\" {print \$1}' xargs -r git branch -D"
