#!/bin/bash
#These scirpts made by Apollo to make Arch Linux installation esaier and faster.

echo "Hello. Welcome to your Arch Linux intall script!"

setfont ter-224b.psf.gz

timedatectl set-timezone "Europe/Istanbul"

timedatectl set-ntp True

timedatectl status

#cfdisk /dev/sda
#mkfs.fat -F32 /dev/sda1
#mkswap /dev/sda2
#swapon /dev/sda2
#mkfs.ext4 /dev/sda2
#mount /dev/sda2 /mnt
#pacstrap /mnt base base-devel linux linux-firmware

cfdisk /dev/nvme0n1
mkfs.fat -F32 /dev/nvme0n1p1
mkfs.ext4 /dev/nvme0n1p2

mount /dev/nvme0n1p2 /mnt

pacstrap /mnt base base-devel linux linux-firmware mesa mesa-utils linux-headers intel-ucode

genfstab -U /mnt >> /mnt/etc/fstab

curl -o step2.sh https://github.com/apollotash/ArchScripts/blob/master/step2.sh

chmod +x step2.sh

cp step2.sh /mnt

arch-chroot /mnt ./step2.sh

rm /mnt/step2.sh

rm step2.sh

umount -l /mnt

#reboot
