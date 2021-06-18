# Arch Installation

## Keyboard and font setup

```bash
setfont ter-132n

loadkeys es
loadkeys la-latin
```

## Internet config

```bash
# Ethernet
ping -c 3 google.com

# Wifi
systemctl enable dhcpcd
systemctl start dhcpcd
wifi-menu # login...
```

## Disk partitions and mounting

```bash
# Disk Partition
fdisk -l
cfdisk /dev/<disk_id> # GPT 
# <write the partitions: efi, root, home>
# sda1 > boot | type: EFI System
# sda2 > root 
# sda3 > home


# Format Partitions
mkfs.fat -F 32 /dev/sda1 # efi ...
mkfs.ext4 /dev/sda2 # root 
mkfs.ext4 /dev/sda3 # home *or maybe not 

# Check partitions
fdisk -l


# Mount root partition
mount /dev/sda2 /mnt

mkdir /mnt/home
mount /dev/sda3 /mnt/home

mkdir /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

```

## Install base packages

```bash
# Update Mirrors
pacman -Sy reflector python3 --noconfirm
reflector --verbose -l 10 --sort rate --save /etc/pacman.d/mirrorlist

# Base packages
pacstrap /mnt base base-devel git vim

# Internet conf
pacstrap /mnt dhcpcd netctl iwd net-tools

# Wifi stuff
pacstratp /mnt wireless_tools dialog wpa_supplicant

```

##  Write partition table

```bash
# Write partition table
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab
```

## Language, clock and hostname setup

```bash
# Enter as root
arch-chroot /mnt


# Set Language
vim /etc/locale.gen
# uncomment es_EC.UTF-8

local-gen
echo LANG=es_EC.UTF-8 > /etc/locale.conf
export LANG=es_EC.UTF-8

# Set Zone
ls /usr/share/zoneinfo/America
ln -sf /usr/share/zoneinfo/America/Guayaquil /etc/localtime

# Set clock
hwclock -w 

# Keyboard distribution
echo KEYMAP=es > /etc/vconsole.conf


# Set Hostname
echo Jarvis > /etc/hostname
vim /etc/hosts

# /etc/hosts:
# 127.0.0.1 [tab] localhost
# ::1       [tab] localhost
# 127.0.1.1 [tab] Jarvis.localdomain Jarvis

```

## Users

```bash

# root password
passwd root
<<< type password >>> 

# Add users
useradd -m -g users -s /bin/bash/dgloor
passwd dgloor
<<< type password >>> 

# Set sudo stuff
vim /etc/sudoers
# below "root ALL=(ALL) ALL" write:
# dgloor ALL=(ALL) ALL

```


## Install Internet packages

```bash
pacman -S networkmanager ifplugd
systemctl enable Networkmanager


pacman -S openssh
systemctl enable sshd
```

## Install Linux stable kernel

```bash
pacman -S linux linux-firmware mkinitcpio linux-headers
```


## Grub setup, dual boot

```bash
pacman -S grub efibootmgr os-prober
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=Arch
grub-install --target=x86_64-efi --efi-directory=/boot/efi --removable

vim /etc/default/grub

# edit this: 
GRUB_TIMEOUT=5
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3"

# Fix windows detection, add this at the end of the file:
GRUB_DISABLE_OS_PROBER=false


grub-mkconfig -o /boot/grub/grub.cfg
```

## Exit and reboot

```
exit 
umount -R /mnt 
reboot
```

## After reboot

```bash
# Login as root
systemctl enable dhcpcd
ip link

# Ethernet
systemctl enable ifplugd@<interface_id> # last one generally

# Wifi
systemctl enable ifplugd@<interface_id> # wlp3s0 maybe
nmclid dev wifi list
nmcli dev wifi connect <'NETWORK name'> password <PASSWORD>

# check connection
nmcli dev status
```


## Pacman Config

```bash
sudo vim /etc/pacman.conf

# uncommnent:
Color
Total Download
CheckSpace
# ...
[multilib]
Include = /etc/pacman.d/mirrorlist

# add:
ILoveCandy
```

## Extra packages

### Drivers

```bash
pacman -S pfetch amd-ucode #or intel-ucode

# drivers amd
pacman -S mesa lib32-mesa
pacman -S xf86-video-amdgpu
pacman -S vulkan-radcon lib32-vulkan-radeon

# drivers intel
pacman -S mesa lib32-mesa
pacman -S xf86-video-intel vulkan-intel
```

### Directories

```bash
pacman -S xdg-user-dirs
xdg-users-dirs-update
```

### Audio & video

```bash
pacman -S pulseaudio pavucontrol pulseaudio-alsa pamixer pulseaudio-equalizer mpv
```

### Archivers

```bash
pacman -S ark xarchiver unarchiver binutils gzip lha lrzip
pacman -S lzip lz4 p7zip tar xz bzip2 p7zip lbzip2 arj lzop
pacman -S cpio unrar unzip zstd zip lzip unarj zstd
```

### Disk utils

```bash
pacman -S android-file-transfer android-tools android-udev msmtp libmtp
pacman -S libcddb gvfs gvfs-afc gvfs-smb gvfs-gphoto2 gvfs-mtp
pacman -S gvfs-goa gvfs-nfs gvfs-google
pacman -S ntfs-3g exfat-utils udftools gpart mtools
```

### Xorg server

```bash
pacman -S xorg xorg-apps xorg-init xorg-twm xterm xorg-xclock
```

### Login manager, lightdm

```bash
pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
pacman -S lightl-locker accountsservice
systemctl enable lightdm
```

### Install ARU Helper - Paru

```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

### Etc

```bash
# fc-list <- to see all fonts
pacman -S alacritty firefox noto-fonts ttf-dejavu ttf-liberation picom neovim trash-cli
```

## Install XCFE

```bash
pacman -S xcfe-4 xcfe4-goodies network-manager-applet
```
