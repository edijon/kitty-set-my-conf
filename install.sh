#! /bin/bash

#: Install configuration file
mkdir -p ~/.config/kitty
cp ./kitty.conf ~/.config/kitty/

#: Install kitty themes
git clone --depth 1 git@github.com:dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
ln -sf ~/.config/kitty/kitty-themes/themes/ayu.conf ~/.config/kitty/theme.conf
