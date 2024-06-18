# RoundWaita
Hatter + MoreWaita for a GNOME icon theme, with round corners !

**NB**: This theme requires Adwaita in order to work.

This theme is built and tested against vanilla Gnome on Fedora Linux. If an icon is in the theme, but is not applying to your app, please open an issue and mention the icon name referenced in your app's `.desktop` file.

## Installation

#### Manual installation
##### Download the theme
`git clone https://github.com/topiga/RoundWaita.git`

##### Enter the downloaded folder
`cd RoundWaita`

##### Install system-wide (recommended)
`sudo ./install.sh`  
This copies the whole theme folder without the build files into `/usr/share/icons/`. You will be prompted for your password.

##### Install for local user
`./install.sh`  
This copies the whole theme folder without the build files into `~/.local/share/icons/`.

##### Update
Use the same steps as for installation.

##### Uninstall
Simply chose another theme and then delete the entire `RoundWaita` folder from either `/usr/share/icons/` or `~/.local/share/icons/` depending on your installation choice above. 

## Activation
Either use the `Tweaks` app to choose and activate the icon theme or run the following command:

`gsettings set org.gnome.desktop.interface icon-theme 'RoundWaita'`

## Troubleshooting

#### Theme doesn't apply
If the theme doesn't apply try the following command:

##### For system-wide installation
`sudo gtk-update-icon-cache -f -t /usr/share/icons/RoundWaita && xdg-desktop-menu forceupdate`

##### For local installation
`gtk-update-icon-cache -f -t ~/.local/share/icons/RoundWaita && xdg-desktop-menu forceupdate`

#### Some apps don't get themed
If the theme applies, but a particular app doesn't get themed (and its icon is in RoundWaita), check its respective `.desktop` file. Some apps have icon paths hardcoded into their `.desktop` file or have a different icon name set there or no icon set at all. This can differ between distros. If you happen to have such apps, you'll need to copy their `.desktop` files into `~/.local/share/applications` and modify them there providing the correct icon name. Alternatively, use a menu editor like `MenuLibre` or `Alacarte`.  
If your app's `.desktop` file references an icon name not present in RoundWaita's `apps/scalable` folder, please report it in an issue providing the icon name from your system. 

## The icons
_To be added_
