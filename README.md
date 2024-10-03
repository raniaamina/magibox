 # Magibox 
 **Magibox**: Easy tool to assign your favorite shortcut combination in a button.
This tool will help you organize and assign your favorit shortcut into organized button. 

## Dependencies
- python3-tk
- python3-ttkthemes
- Xdotool
- wmctrl

## Usage
- Download the latest [release](https://github.com/raniaamina/magibox/releases/)
- Download the magibox-*.zip file
- Extract the zip
- Just run double click `magibox`

Make sure the `magibox` file has executable permission (`chmod +x /path/to/magibox`).
You can also run the py file via command `python3 magibox.py`

Select the window of application that you wanna set to receive command from Magibox.

## Configuration
You can personalize the button task / assign the shortcut by editting magi.conf that you can found inside extracted folder. Don't remove the comment "# Key", just edit the name and command. The name value will appear as button text and the command value will execute when button is pressed. Each should line follows this format:
`Label = key_combination`

```bash
# example
Copy = ctrl+c
Paste = ctrl+v
```

You can assign more than one combination shortcut key into one button;

```bash
# example
CopyPaste = ctrl+c ctrl+v
```

Each combination separated by space. For special character, please refer to [special-key-references.txt](special-key-references.txt)

You can create you own configuration for each apps, and then run magibox with this following parameter

```bash
./magibox --useconf /path/to/custom.conf
```

## Disclaimer 
We don't guarantee anything about this tool/extension, so please use it at your own risk. We can't give 24/7 support if you have a problem when using Magibox. 

If you feel that this tool has helped you to create, feel free to donate a cup of coffee on the [Support Dev](https://saweria.co/raniaamina) :")