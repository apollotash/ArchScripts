ln -sf /usr/share/zoneinfo/Europe/Istanbul /etc/localtime

hwclock --systohc

pacman -S gvim

echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen

#echo "tr_TR.UTF-8 UTF-8" >> /etc/locale.gen

#vim /etc/locale.gen

locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf

echo "KEYMAP=trq" >> /etc/vconsole.conf

echo "Acer" >> /etc/hostname

echo "127.0.0.1    localhost" >> /etc/hosts

echo "::1    	     localhost" >> /etc/hosts

echo "127.0.1.1    Acer.localdomain    Acer" >> /etc/hosts

vim /etc/hosts

echo "Please enter a password for root user."

passwd

useradd -m apollo

echo "Please enter a password for created user."

passwd apollo

usermod -aG wheel apollo

EDITOR=vim visudo

pacman -S grub efibootmgr dosfstools os-prober mtools 

mkdir /boot/efi

mount /dev/nvme0n1p1 /boot/efi
#mount /dev/sda1 /boot/efi

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=Arch

grub-mkconfig -o /boot/grub/grub.cfg

pacman -S networkmanager git

systemctl enable NetworkManager

exit
