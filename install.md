# Arch Installation Guide

## Base Installation

### Keyboard and font setup

```bash
setfont ter-p20n

loadkeys es
loadkeys la-latin
```

### Internet config

```bash
# Ethernet
ping -c 3 google.com

# Wifi
systemctl enable dhcpcd
systemctl start dhcpcd
wifi-menu
# TODO: login...
```

### Disk partitions and mounting

```bash
# Disk Partition
fdisk -l
cfdisk /dev/<disk_id> # GPT
# TODO: Write the partitions: efi, root, home, swap
# sda1 > boot | type: EFI System
# sda2 > root
# sda3 > home
# sda4 > swap


# Format Partitions
mkfs.fat -F 32 /dev/sda1 # efi ...
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3 # *or maybe not
mkfswap /dev/sda4

# Check partitions
fdisk -l

# Mount root partition first
mount /dev/sda2 /mnt

mkdir /mnt/home
mount /dev/sda3 /mnt/home

mkdir /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

# Activate swap partition
swapon /dev/sda4
```

### Install base packages

```bash
# Update Mirrors
pacman -Sy reflector python3 --noconfirm
reflector --verbose -l 15 --sort rate --save /etc/pacman.d/mirrorlist

# Base packages
pacstrap /mnt base base-devel git vim

# Internet conf
pacstrap /mnt dhcpcd netctl iwd net-tools

# Wifi stuff
pacstratp /mnt wireless_tools dialog wpa_supplicant
```

### Write partition table

```bash
# Write partition table
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab
```

### Language, clock and hostname setup

```bash
# Enter as root
arch-chroot /mnt

# Set Language
vim /etc/locale.gen
# TODO: uncomment es_EC.UTF-8

local-gen
echo LANG=es_EC.UTF-8 > /etc/locale.conf
export LANG=es_EC.UTF-8

# Set Zone
ls /usr/share/zoneinfo/America
ln -sf /usr/share/zoneinfo/America/Guayaquil /etc/localtime

# Set clock
hwclock -w

# Keyboard distribution
echo KEYMAP=la-latin1 > /etc/vconsole.conf

# Set Hostname
echo Jarvis > /etc/hostname
vim /etc/hosts

vim /etc/hosts:
# TODO: add ...
# 127.0.0.1 [tab] localhost
# ::1       [tab] localhost
# 127.0.1.1 [tab] Jarvis.localdomain Jarvis
```

### Set Users

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

### Install Internet packages

```bash
pacman -S networkmanager ifplugd
systemctl enable NetworkManager

pacman -S openssh
systemctl enable sshd
```

### Install Linux Stable Kernel

```bash
pacman -S linux linux-firmware linux-headers mkinitcpio
```

### Grub setup, dual boot

```bash
pacman -S grub efibootmgr os-prober
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=Arch

vim /etc/default/grub

# TODO: edit this:
GRUB_TIMEOUT=5
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3"

# Fix windows detection, add this at the end of the file:
GRUB_DISABLE_OS_PROBER=false

grub-mkconfig -o /boot/grub/grub.cfg
```

### Exit and reboot

```bash
exit
umount -R /mnt
reboot
```

### After reboot

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

### Pacman Config

```bash
sudo vim /etc/pacman.conf

# TODO: uncommnent:
Color
Total Download
CheckSpace
# add:
ILoveCandy

# ...
[multilib]
Include = /etc/pacman.d/mirrorlist

# After:
pacman -Syy
```

## Extra Packages Installation

### Drivers

```bash
pacman -S mesa amd-ucode #or intel-ucode

# drivers amd
pacman -S mesa lib32-mesa
pacman -S xf86-video-amdgpu
pacman -S vulkan-radeon lib32-vulkan-radeon

# drivers intel
pacman -S mesa lib32-mesa
pacman -S xf86-video-intel vulkan-intel
```

### Directories

```bash
pacman -S xdg-user-dirs
LC_ALL=C xdg-users-dirs-update --force
```

### AUR Helper - Paru

```bash
# Before install Paru:
exit
# TODO: Login as no-root user

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

cd ..
```

### Audio & video

```bash
sudo pacman -S pulseaudio pavucontrol pulseaudio-alsa pulseaudio-equalizer
sudo pacman -S playerctl pamixer mpv mpv-mpris
paru -S spotify spotify-adblock
```

### Archivers

```bash
sudo pacman -S xarchiver gzip tar zip p7zip unzip unrar
```

### Disk utils

```bash
sudo pacman -S libcddb gvfs gvfs-mtp ntfs-3g exfat-utils gpart
paru -S simple-mtpfs
```

### Display Manager: Ly

```bash
sudo pacman -S xorg xorg-xinit xterm
paru -S ly

sudo systemctl enable ly.service
```

### Utilities for DE and WM's

```bash
sudo pacman -S udiskie network-manager-applet udisks2
```

### Fonts

```bash
# fc-list <- to see all fonts
sudo pacman -S noto-fonts noto-fonts-emoji ttf-dejavu
sudo pacman -S ttf-liberation ttf-font-awesome ttf-jetbrains-mono
paru -S ttf-ms-fonts nerd-fonts-complete
```

### XFCE

```bash
sudo pacman -S xfce4 xfce4-goodies
paru -S alacritty firefox github-cli # essentials

# TODO:
# logout and login "xfce4 session"
setxkbmap latam # latam keyboard layout
```

### Bswpm

```bash
sudo pacman -S libxcb xcb-util xcb-util-wm xcb-util-keysyms # dependencies
sudo pacman -S bspwm sxhkd rofi xsel xdo wmctrl wmname
paru -S polybar picom rofi-emoji

# Bspwm & Sxhkd initial config
mkdir -p ~/.config/{bspwm,sxhkd}
install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc
chmod u+x ~/.config/bspwm/bspwmrc
# TODO: replace terminal in sxhkdrc
# super + Return
#   alacritty

# Polybar initial config
cp /usr/share/doc/polybar/config .config/polybar
# TODO: add this line to bspwmrc:
# polybar example & picom &

# Rofi initial config
rofi -upgrade-config
rofi -dump-config > ~/.config/rofi/config.rasi
# TODO:
# 1) uncomment and modify:
#   modi: "drun";
# 2) add this two line to sxhkdrc
#   super + shift + Return
#       rofi -show drun

# Picom initial config
mkdir -p ~/.config/picom
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf
```

### Apps

```bash
sudo pacman -S copyq flameshot sxiv
paru -S anydesk-bin bitwarden balena-etcher google-chrome mailspring
```

### CLI

```bash
sudo pacman -S starship trash-cli zsh zsh-autosuggestions zsh-syntax-highlighting
paru -S autojump-rs fontpreview-ueberzug-git

# make zsh the default shell
chsh -s /bin/zsh

# lf stuff
sudo pacman -S python-pdftotext mediainfo bat catdoc docx2txt
paru -S lf dragon-drag-and-drop
```

### Software development

```bash
sudo pacman -S python-pip bpython lazygit gnome-keyring
paru -S neovim-git vscodium-bin vscodium-bin-marketplace
paru -S color-picker figma-linux

# LSP
sudo pacman -S clang texlab
```

### Comunication

```bash
paru -S discord whatsdesk-bin telegram-desktop-bin zoom
```

### Education

```bash
paru -S anki obsidian
```

### Documents

```bash
sudo pacman -S zathura zathura-pdf-mupdf
sudo pacman -S wps-office wps-office-mime ttf-wps-fonts
sudo pacman -S texlive-most texlive-lang
```

### Search

```bash
sudo pacman -S fd fzf ripgrep
```

### Edition & Video recorders

```bash
sudo pacman -S obs-studio simplescreenrecorder gimp
paru -S olive
```

### Keyboard stuff

```bash
sudo pacman -S numlockx
```

### Utilities

```bash
sudo pacman -S dunst lsd neofetch redshift screenkey
sudo pacman -S speedtest-cli xwallpaper wget
sudo pacman -S pacman-contrib sysstat
paru -S bottom cpufetch-git duf pfetch unclutter-xfixes-git
```

### Theme

```bash
sudo pacman -S lxappearance
```
