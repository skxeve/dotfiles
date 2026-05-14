#!/bin/bash

_shelldir=$(cd "$(dirname "$0")"; pwd)

if [[ "$SHELL" == *"/zsh"* ]]; then
    _target="$HOME/.zshrc"
elif [[ "$SHELL" == *"/bash"* ]]; then
    _target="$HOME/.bash_profile"
else
    _target="$HOME/.profile"
fi

echo "Target file: $_target"

[ ! -f "$_target" ] && touch "$_target"

add_line_if_not_exists() {
    local _line="$1"
    local _file="$2"

    if ! grep -Fq "$_line" "$_file"; then
        echo "$_line" >> "$_file"
        echo "added: $_line"
    else
        echo "skip add (already exists): $_line"
    fi
}

echo "--- Initializing dotfiles ---"

add_line_if_not_exists "# skxeve github dotfiles" "$_target"
add_line_if_not_exists "export PATH=\$PATH:$_shelldir/bin" "$_target"
add_line_if_not_exists ". $_shelldir/shell/load" "$_target"

echo "--- Done! Please restart your shell or run: source $_target ---"
