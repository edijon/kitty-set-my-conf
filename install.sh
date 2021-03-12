#! /bin/bash

SCRIPT_DIRECTORY=$(readlink -f $0)
SCRIPT_DIRECTORY=$(cd $(dirname $SCRIPT_DIRECTORY); pwd)

main() {
    install_configuration_file
    get_kitty_themes_repository
    set_kitty_theme
}

install_configuration_file() {
    configuration_file="$SCRIPT_DIRECTORY/kitty.conf"
    configuration_directory="$HOME/.config/kitty"

    mkdir -p $configuration_directory && \
    cp $configuration_file $configuration_directory/
}

get_kitty_themes_repository() {
    git clone --depth 1 \
        https://github.com/dexpota/kitty-themes.git \
        $HOME/.config/kitty/kitty-themes
}

set_kitty_theme() {
    ln -sf $HOME/.config/kitty/kitty-themes/themes/ayu_mirage.conf $HOME/.config/kitty/theme.conf
}

main $@