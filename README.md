 # Magibox 
 **Magibox**: Easy tool to assign your favorite shortcut in a button.
This tool will help you organize and assign your favorit shortcut into organized button. 

## Dependencies
- Yad
- Kdialog
- Xdotool

## Installation
Download / Clone this repository, then run `install.sh` script.
For uninstall, just do same thing to `uninstall.sh` script.

## Configuration
You can personalize the button task / assign the shortcut by editting mainkey.conf that you can found in `$HOME/.config/magibox`. Don't remove the comment "# Key", just edit the name and command. The name value will appear as button text and the command value will execute when button is pressed.

```bash
# Key 01
Name: Microphone
Command: xdotool key 0xff13
```

We recomend to use xdotool to asssign shotcut key into those command. Please refer to this list: https://gitlab.com/cunidev/gestures/-/wikis/xdotool-list-of-key-codes to get info about available key kode.

## Disclaimer 
We don't guarantee anything about this tool/extension, so please use it at your own risk. We can't give 24/7 support if you have a problem when using Inkporter. Of course we'll help as much as we can. The Gimpscape Telegram group is the best place to ask your questions about this extension.

If you feel that this extension has helped you to create, feel free to donate a cup of coffee on the [Dev-Lovers Page](https://support.dev-is.my.id/index-en) :")