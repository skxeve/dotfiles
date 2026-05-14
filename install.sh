#!/bin/bash
mkdir -p ~/git/github.com/skxeve
cd ~/git/github.com/skxeve
if ! git clone git@github.com:skxeve/dotfiles.git; then
    echo "SSH failed, switching to HTTPS..."
    git clone https://github.com/skxeve/dotfiles.git
fi
cd dotfiles
bash ./init.sh
bash ./deploy_dots.sh
