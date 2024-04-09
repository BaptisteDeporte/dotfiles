#!/bin/bash
gitLocation="$HOME/sources/dotfiles/"
folders=(".config/nvim" ".scripts/" ".zshrc" ".oh-my-zsh" ".aliases")

for i in ${!folders[@]}; do
	folder=${folders[$i]}
	cp -R ~/$folder $gitLocation
done
