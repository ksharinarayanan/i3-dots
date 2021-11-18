#!/bin/bash

dots() {
    echo -e 'Setting up dots...\n'
    git clone https://github.com/ksharinarayanan/i3-dots ~/.config/

    chmod +x ~/.config/dm-scripts/*
    chmod +x ~/.config/i3/bin/*
}

yay-install() {
    echo -e 'Installing yay\n'
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si
    cd ..
    rm -rf yay-bin
}

chaotic-aur() {
    sudo su
    pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
    pacman-key --lsign-key 3056513887B78AEB
    pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
    cp /etc/pacman.conf /etc/pacman.conf.bak
    echo -e '[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist' >> /etc/pacman.conf
}

install-packages() {
    echo -e 'Installing packages..'
    sudo pacman -S ytfzf fzf noto-fonts-emoji
}

yay-install
chaotic-aur
install-packages
dots
