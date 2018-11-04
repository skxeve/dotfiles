_shelldir=$(cd $(dirname $0); pwd)

_addline="# skxeve github dotfiles"
if [ -f ~/.bash_profile ]; then
    if [ "$(grep -c "$_addline" ~/.bash_profile)" == "0" ]; then
        echo $_addline >> ~/.bash_profile
        echo "added: $_addline"
    else
        echo "skip add: $_addline"
    fi
else
    echo $_addline > ~/.bash_profile
    echo "created .bash_profile: $_addline"
fi

_addline=". $_shelldir/shell/load"
if [ "$(grep -c "$_addline" ~/.bash_profile)" == "0" ]; then
    echo $_addline >> ~/.bash_profile
    echo "added: $_addline"
else
    echo "skip add: $_addline"
fi

_addline="export PATH=\$PATH:$_shelldir/bin"
if [ "$(grep -c "$_addline" ~/.bash_profile)" == "0" ]; then
    echo $_addline >> ~/.bash_profile
    echo "added: $_addline"
else
    echo "skip add: $_addline"
fi

