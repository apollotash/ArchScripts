cd /home/apollo

sudo pacman -Syu

git clone https://github.com/apollotash/Wallpapers.git


sudo vim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

sudo pacman -S bluez bluez-utils cups alsa-utils pulseaudio pulseaudio-bluetooth neofetch xdg-utils xdg-user-dirs ttf-droid adapta-gtk-theme gtk-engine-murrine papirus-icon-theme ttf-font-awesome ttf-dejavu xorg fish ranger bspwm sxhkd polybar lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings lxappearance nitrogen alacritty blueman thunar gnome-calculator scrot opera-ffmpeg-codecs quadrapassel slock xautolock numlockx openssh gnome-system-monitor firefox htop picom ktouch gedit fortune-mod rofi dmenu whois vlc gimp opera neovim eog xcursor-comix evince transmission-gtk calcurse gnome-disk-utility libreoffice-still python-pip code openvpn rhythmbox mtpfs brightnessctl gvfs-mtp virtualbox virtualbox-host-modules-arch thunar-archive-plugin file-roller




sudo cp ./dotfiles/systemConfigFilesAndLocation/00-keyboard.conf /etc/X11/xorg.conf.d

sudo cp ./dotfiles/systemConfigFilesAndLocation/lightdm-gtk-greeter.conf /etc/lightdm

sudo cp ./dotfiles/systemConfigFilesAndLocation/NetworkManager.conf /etc/NetworkManager

sudo cp ./dotfiles/systemConfigFilesAndLocation/30-touchpad.conf /etc/X11/xorg.conf.d

sudo cp ./dotfiles/systemConfigFilesAndLocation/index.theme /usr/share/icons/default/index.theme

sudo mkdir /usr/share/backgrounds
sudo cp ./Wallpapers/7.jpg /usr/share/backgrounds/7.jpg


cd /home/apollo/dotfiles

cp .bash_aliases .bash_profile .bashrc .gitconfig .gtkrc-2.0 .vimrc .xprofile /home/apollo/

cp -r .icons/ /home/apollo

cd .config

mkdir /home/apollo/.config

cp ktouch2rc /home/apollo/.config

cp -r alacritty/ bspwm/ fish/ nautilus/ nitrogen/ nvim/ polybar/ rofi/ sxhkd/ /home/apollo/.config


cd /home/apollo


sudo systemctl enable bluetooth

sudo systemctl enable cups

sudo systemctl enable lightdm

sudo chsh -s /usr/bin/fish

exit
