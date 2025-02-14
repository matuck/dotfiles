#!/usr/bin/env bash

# Set distrubution
DIST=$(lsb_release -i|sed 's/Distributor ID:\t//g')
echo $DIST
#DIST="Debian"
read -p "Do you want to install packages (y|n): " -i y -e DOPKGINSTALLS;

case "$DIST" in 
    Arch)
        pacman -Qi yay &> /dev/null
        retVal=$?
        if [ $retVal -eq 1 ] ; then
            echo "Please install yay";
        fi
        PKGINST="yay -S - ";
        ;;
    "Ubuntu" | "Debian")
        echo "This is not setup yet"
        exit 1;
        ;;
    *)
        echo "Your distrubution is not supported.";
        exit 1;
        ;;
esac
if [[ "$DOPKGINSTALLS" = "y" ]] ; then
    if [ -f __setup/__pre.$DIST ] ; then
        eval "$PKGINST < __setup/__pre.$DIST";
    fi
fi

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update
cmd=(dialog --separate-output --checklist "Select options:" 22 76 17)
options2=("ss1" "" off
    2 "Option 2" off
    3 "Option 3" off
    4 "Option 4" off
    )
options=($(ls -d */|sed 's/\///'|grep -v __setup|sed 's/$/ files on/'));
DOTINSTALLS=$("${cmd[@]}" "${options[@]}" 2>&1 > /dev/tty);
clear;

# run the stow command for the passed in directory ($2) in location $1
stowit() {
    usr=$1
    app=$2
    # -v verbose
    # -R recursive
    # -t target
    stow -v -R -t ${usr} ${app}
}

echo ""
echo "Stowing apps for user: ${whoami}"

# install apps available to local users
for app in $DOTINSTALLS; do
    if [[ "$DOPKGINSTALLS" = "y" ]] ; then
        if [ -f __setup/$app.$DIST ] ; then
            echo "Install any packages needed for $app dot files";
            eval "$PKGINST < __setup/$app.$DIST";
        fi
    fi
    stowit "${HOME}" $app; 
done

echo ""
echo "##### ALL DONE"
