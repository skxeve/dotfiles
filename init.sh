_shelldir=$(cd $(dirname $0); pwd)

for _dotpath in `find $_shelldir/dot -type f`
do
    _dotname=$(basename $_dotpath)
    ln -s -v $_dotpath ~/$_dotname
done

_loadpath=". $_shelldir/shell/load"
if [ -f ~/.bash_profile ]; then
    if [ "$(grep -c "$_loadpath" ~/.bash_profile)" == "0" ]; then
        echo $_loadpath >> ~/.bash_profile
    fi
else
    echo $_loadpath > ~/.bash_profile
fi
