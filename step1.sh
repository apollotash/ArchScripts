#!/bin/bash
#These scirpts made by Apollo to make Arch Linux installation esaier and faster.
echo "Hello. Welcome to your Arch Linux intall script!"

setfont ter-224b.psf.gz

timedatectl set-timezone "Europe/Istanbul"

timedatectl set-ntp True

timedatectl status

cfdisk /dev/nvme0n1
#cfdisk /dev/sda

mkfs.fat -F32 /dev/nvme0n1p1
#mkfs.fat -F32 /dev/sda1

#mkswap /dev/sda2

#swapon /dev/sda2

mkfs.ext4 /dev/nvme0n1p2
#mkfs.ext4 /dev/sda2

mount /dev/nvme0n1p2 /mnt
#mount /dev/sda2 /mnt

pacstrap /mnt base base-devel linux linux-firmware mesa mesa-utils linux-headers intel-ucode
#pacstrap /mnt base base-devel linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

curl -o step-2.sh https://github.com/apollotash/ArchScripts/blob/master/step2.sh

chmod +x step-2.sh

cp step-2.sh /mnt

arch-chroot /mnt ./step-2.sh

rm /mnt/step-2.sh

rm step-2.sh

umount -l /mnt

#reboot
