cd ~

sudo pacman -Syu

mkdir GitRepos
mv ArchScripts ./GitRepos
cd GitRepos
git clone git@github.com:apollotash/Wallpapers.git
git clone git@github.com:apollotash/Extras.git
git clone git@github.com:apollotash/dotfiles.git

cd ..
sudo vim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

sudo pacman -S bluez bluez-utils cups alsa-utils pulseaudio pulseaudio-bluetooth neofetch xdg-utils xdg-user-dirs at ttf-droid adapta-gtk-theme gtk-engine-murrine papirus-icon-theme ttf-font-awesome ttf-dejavu xorg fish ranger bspwm sxhkd polybar lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings lxappearance nitrogen cmatrix alacritty blueman thunar gnome-calculator scrot opera-ffmpeg-codecs quadrapassel slock xautolock numlockx openssh gnome-system-monitor firefox htop picom ktouch gedit fortune-mod rofi dmenu whois vlc mpv yt-dlp gimp neovim eog xcursor-comix evince transmission-gtk calcurse gnome-disk-utility libreoffice-still python-pip code openvpn rhythmbox mtpfs brightnessctl gvfs-mtp virtualbox virtualbox-host-modules-arch thunar-archive-plugin file-roller




sudo cp ./GitRepos/Extras/systemConfigFilesAndLocation/00-keyboard.conf /etc/X11/xorg.conf.d

sudo cp ./GitRepos/Extras/systemConfigFilesAndLocation/lightdm-gtk-greeter.conf /etc/lightdm

sudo cp ./GitRepos/Extras/systemConfigFilesAndLocation/NetworkManager.conf /etc/NetworkManager

sudo cp ./GitRepos/Extras/systemConfigFilesAndLocation/30-touchpad.conf /etc/X11/xorg.conf.d

sudo cp ./GitRepos/Extras/systemConfigFilesAndLocation/index.theme /usr/share/icons/default/index.theme

sudo mkdir /usr/share/backgrounds
sudo cp ./GitRepos/Wallpapers/7.jpg /usr/share/backgrounds/7.jpg


cd ./GitRepos/dotfiles

cp .bash_aliases .bash_profile .bashrc .gitconfig .gtkrc-2.0 .vimrc .xprofile ~

cp -r .icons/ ~

cd .config

mkdir ~/.config

cp ktouch2rc ~/.config

cp -r alacritty/ bspwm/ fish/ nautilus/ nitrogen/ nvim/ polybar/ rofi/ sxhkd/ ~/.config


cd ~


sudo systemctl enable bluetooth

sudo systemctl enable cups

sudo systemctl enable lightdm

sudo chsh -s /usr/bin/fish

exit
