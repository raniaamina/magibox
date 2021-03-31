#!/bin/bash
# Dependencies Check
# Yad
echo "Checking Yad, Xdotool, and Kdialog Package."

which yad > /dev/null
if [ $? -eq 0 ]; then
    echo -e "Checking Yad ..."
    sleep 1
    echo -e "Yad Installed!\n"
    sleep 1
else
    echo -e "\nChecking Yad ..."
    sleep 1
    echo -e "Yad not found, please install it first!\n"
    exit
fi

# Xdotool
which xdotool > /dev/null
if [ $? -eq 0 ]; then
    echo -e "Checking Xdotool ..."
    sleep 1
    echo -e "xdotool Installed!\n"
    sleep 1
else
    echo -e "\nChecking xdotool ..."
    sleep 1
    echo -e "Xdotool not found, please install it first!\n"
    exit
fi

# Kdialog
which kdialog > /dev/null
if [ $? -eq 0 ]; then
    echo -e "Checking Kdialog ..."
    sleep 1
    echo -e "Kadialog Installed!\n"
    sleep 1
else
    echo -e "\nChecking Kdialog ..."
    sleep 1
    echo -e "Kdialog not found, please install it first! \n"
    exit
fi


# Install script
if [[ ! -d $HOME/.config/magibox ]]; then
mkdir -p $HOME/.config/magibox/keymap
fi

echo Installing script
sleep 1
cp mainkey.conf $HOME/.config/magibox/keymap/0-default.conf

if [[ -d $HOME/.config/magibox/keymap ]]; then
echo " - Copying configuration"
sleep 1
else
echo "Can't copy configuration file"
echo "Installation failed"
exit
fi


if [[ ! -d /usr/share/magibox/imgs ]]; then
sudo mkdir -p /usr/share/magibox/imgs
fi

sudo cp images/magibox.png /usr/share/magibox/imgs/magibox.png
sudo cp images/magibox.desktop /usr/share/applications/magibox.desktop

sudo cp magibox.sh /usr/local/bin/magibox
sudo chmod +x /usr/local/bin/magibox
sudo chown $USER /usr/local/bin/magibox
if [[ -f /usr/local/bin/magibox ]]; then
echo " - Copying executable"
sleep 1
echo -e " - Magibox installed for $USER!\n"
sleep 1
echo "Have a nice day!"
else
echo "installation failed!"
fi

