#!/bin/bash
# Starf of Script
# Magibox by Rania Amina (Devlovers ID)
# For commercial purpose, please contact support@dev-is.my.id

set -e

VERSION=0.5.1
DIALOGSET="--center --window-icon=/usr/share/magibox/imgs/magibox.png --name=magibox --class=Devlovers --width=450"
KEY=`echo $RANDOM`
keepKey="$HOME/.config/magibox/keep-key.conf"
mainKey="$HOME/.config/magibox/mainkey.conf"

# Some parameters

if [ "$1" = "--version" ] ; then
  echo -e "\n  Magibox v$VERSION"
  echo -e "  by Devlovers ID\n"
  exit 0
fi

if [ "$1" = "--donate" ] ; then
  echo 'Opening donation page ...'
  xdg-open https://support.dev-is.my.id/
  exit 0
fi

if [ "$1" = "--btnmap" ] ; then
  echo ""
  cat $mainKey
  echo -e "To modify this file, open mainkey.conf in $mainKey \n"
  exit 0
fi

if [ "$1" = "--cfg" ] ; then
  echo $mainKey
  exit 0
fi

if [ "$1" = "--docs" ] ; then
  echo 'Opening repository page ...'
  xdg-open https://github.com/raniaamina/magibox
  exit 0
fi


if [ "$1" = "--help" ] ; then
  echo
  echo "  --btnmap              View config of button map"
  echo "  --version             Show Magibox version"
  echo "  --docs                Open docs page"
  echo "  --donate              Open donation page "
  echo "  --help                Show this help"
  echo 
  echo "Magibox v$VERSION"
  echo "https://github.com/raniaamina/magibox"
  echo
  exit 0
fi


echo -e "Welcome to Magibox: \nEasy tool to assign your favorite shortcut in a button.\n"

# Check Current Config =================================================================
if [[ ! -f $keepKey ]]; then
echo "It look like your first run!"
touch $keepKey
else
echo -e "Magibox config found! \n"
fi

# Check Extra Button Status =================================================================
ctrlBtn=`cat $keepKey | egrep -v "^\s*(#|$)" | sed "1q;d"`
altBtn=`cat $keepKey | egrep -v "^\s*(#|$)" | sed "2q;d"`
fnBtn=`cat $keepKey | egrep -v "^\s*(#|$)" | sed "3q;d"`
metaBtn=`cat $keepKey | egrep -v "^\s*(#|$)" | sed "4q;d"`
echo -e "Ctrl Status: $ctrlBtn \nAlt Status: $altBtn \nFn Status: $fnBtn \nMeta Status: $metaBtn \n"

# Setup Function =================================================================

btn1(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_1=$(awk 'c&&!--c;/Key 01/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_1=$(awk 'c&&!--c;/Key 01/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_1" 1
    $CMD_1
}

btn2(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_2=$(awk 'c&&!--c;/Key 02/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_2=$(awk 'c&&!--c;/Key 02/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_2" 1
    $CMD_2
}

btn3(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_3=$(awk 'c&&!--c;/Key 03/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_3=$(awk 'c&&!--c;/Key 03/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_3" 1
    $CMD_3
}

btn4(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_4=$(awk 'c&&!--c;/Key 04/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_4=$(awk 'c&&!--c;/Key 04/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_4" 1
    $CMD_4
}

btn5(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_5=$(awk 'c&&!--c;/Key 05/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_5=$(awk 'c&&!--c;/Key 05/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_5" 1
    $CMD_5
}

btn6(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_6=$(awk 'c&&!--c;/Key 08/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_6=$(awk 'c&&!--c;/Key 08/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_6" 1
    $CMD_6
}

btn7(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_7=$(awk 'c&&!--c;/Key 07/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_7=$(awk 'c&&!--c;/Key 07/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_7" 1
    $CMD_7
}

btn8(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_8=$(awk 'c&&!--c;/Key 08/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_8=$(awk 'c&&!--c;/Key 08/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_8" 1
    $CMD_8
}

btn9(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_9=$(awk 'c&&!--c;/Key 09/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_9=$(awk 'c&&!--c;/Key 09/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_9" 1
    $CMD_9
}

btn10(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_10=$(awk 'c&&!--c;/Key 10/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_10=$(awk 'c&&!--c;/Key 10/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_10" 1
    $CMD_10
}

btn11(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_11=$(awk 'c&&!--c;/Key 11/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_11=$(awk 'c&&!--c;/Key 11/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_11" 1
    $CMD_11
}

btn12(){
    # Get ke value
    mainKey="$HOME/.config/magibox/mainkey.conf"
    Name_12=$(awk 'c&&!--c;/Key 12/{c=1}' $mainKey | cut -d ':' -f2)
    CMD_12=$(awk 'c&&!--c;/Key 12/{c=2}' $mainKey | cut -d ':' -f2)
    
    # Button command
    kdialog --title 'Magibox' --passivepopup "Executing $Name_12" 1
    $CMD_12
}
export -f btn1 btn2 btn3 btn4 btn5 btn6 btn7 btn8 btn9 btn10 btn11 btn12

# Get Variable for UI =================================================================
Name_1=$(awk 'c&&!--c;/Key 01/{c=1}' $mainKey | cut -d ':' -f2)
Name_2=$(awk 'c&&!--c;/Key 02/{c=1}' $mainKey | cut -d ':' -f2)
Name_3=$(awk 'c&&!--c;/Key 03/{c=1}' $mainKey | cut -d ':' -f2)
Name_4=$(awk 'c&&!--c;/Key 04/{c=1}' $mainKey | cut -d ':' -f2)
Name_5=$(awk 'c&&!--c;/Key 05/{c=1}' $mainKey | cut -d ':' -f2)
Name_6=$(awk 'c&&!--c;/Key 06/{c=1}' $mainKey | cut -d ':' -f2)
Name_7=$(awk 'c&&!--c;/Key 07/{c=1}' $mainKey | cut -d ':' -f2)
Name_8=$(awk 'c&&!--c;/Key 08/{c=1}' $mainKey | cut -d ':' -f2)
Name_9=$(awk 'c&&!--c;/Key 09/{c=1}' $mainKey | cut -d ':' -f2)
Name_10=$(awk 'c&&!--c;/Key 10/{c=1}' $mainKey | cut -d ':' -f2)
Name_11=$(awk 'c&&!--c;/Key 11/{c=1}' $mainKey | cut -d ':' -f2)
Name_12=$(awk 'c&&!--c;/Key 12/{c=1}' $mainKey | cut -d ':' -f2)


# Setup Yad =========================================================================
# Yad Tab 1
yad --plug=$KEY --tabnum=1 --form --title="Function Keys" $DIALOGSET \
--no-buttons --width=250 --on-top --text-align="center" --columns=4 \
--field="$Name_1":FBTN "bash -c btn1" \
--field="$Name_2":FBTN "bash -c btn2" \
--field="$Name_3":FBTN "bash -c btn3" \
--field="$Name_4":FBTN "bash -c btn4" \
--field="$Name_5":FBTN "bash -c btn5" \
--field="$Name_6":FBTN "bash -c btn6" \
--field="$Name_7":FBTN "bash -c btn7" \
--field="$Name_8":FBTN "bash -c btn8" \
--field="$Name_9":FBTN "bash -c btn9" \
--field="$Name_10":FBTN "bash -c btn10" \
--field="$Name_11":FBTN "bash -c btn11" \
--field="$Name_12":FBTN "bash -c btn12" \
--separator=$'\n' \
> /tmp/magibox-tmp &

# Yad Tab 2
yad --plug=$KEY --tabnum=2 --form --title="Setting" $DIALOGSET \
--width=250 --on-top --text-align="center" --columns=2 \
--field=" Keep CTRL":CHK \
--field=" Keep ALT":CHK \
--field=" Keep Fn":CHK \
--field=" Keep Meta":CHK \
--separator=$'\n' \
-- "$ctrlBtn" "$altBtn" "$fnBtn" "$metaBtn" \
> /tmp/magibox.conf &

# Running Yad
yad $DIALOGSET --center --notebook --key=$KEY --on-top --fixed --tab="F1-F12" --tab="Setting (Coming Soon)" \
--image-on-top \
--title="Magibox" \
--button=Exit!gtk-close:0 \
--buttons-layout=center

## Update Setting ========================================================

ctrlNow=$(cat /tmp/magibox.conf | egrep -v "^\s*(#|$)" | sed "1q;d")
altNow=$(cat /tmp/magibox.conf | egrep -v "^\s*(#|$)" | sed "2q;d")
fnNow=$(cat /tmp/magibox.conf | egrep -v "^\s*(#|$)" | sed "3q;d")
metaNow=$(cat /tmp/magibox.conf | egrep -v "^\s*(#|$)" | sed "4q;d")

echo "" > $keepKey
echo -e "# Magibox Settings" > $keepKey
echo -e "\n# Ctrl Button" >> $keepKey
echo $ctrlNow >> $keepKey

echo -e "\n# alt Button" >> $keepKey
echo $altNow >> $keepKey

echo -e "\n# Fn Button" >> $keepKey
echo $fnNow >> $keepKey

echo -e "\n# Meta Button" >> $keepKey
echo $metaNow >> $keepKey

echo -e "Catch you later!"

# End of Script
# Magibox by Rania Amina (Devlovers ID)