# Arch Installation Guide

## Base Installation

### Keyboard and font setup

```bash
setfont ter-132n

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
systemctl enable Networkmanager


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
grub-install --target=x86_64-efi --efi-directory=/boot/efi --removable

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
# ...
[multilib]
Include = /etc/pacman.d/mirrorlist

# TODO: add:
ILoveCandy
```

## Extra Packages Installation

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
pacman -S pulseaudio pavucontrol pulseaudio-alsa pamixer pulseaudio-equalizer 
pacman -S playerctl mpv
```

### Archivers

```bash
pacman -S ark xarchiver unarchiver binutils gzip lha lrzip
pacman -S lzip lz4 p7zip tar xz bzip2 p7zip lbzip2 arj lzop
pacman -S cpio unrar unzip zstd zip lzip unarj zstd
```

### Disk utils

```bash
pacman -S android-file-transfer android-tools msmtp
pacman -S libcddb gvfs gvfs-afc gvfs-smb gvfs-gphoto2 gvfs-mtp
pacman -S gvfs-goa gvfs-nfs gvfs-google
pacman -S ntfs-3g exfat-utils udftools gpart mtools
```

### AUR Helper - Paru

```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

### Display Manager: Ly

```bash
pacman -S xorg xorg-xinit xterm
paru -S ly

systemctl enable ly.service
```

### Utilities for DE and WM's

```bash
udiskie gvfs network-manager-applet udisks2 udiskie
```

### XCFE

```bash
pacman -S xcfe-4 xcfe4-goodies  gvfs
paru -S alacritty firefox github-cli # essentials
```

### Bswpm

```bash
pacman -S libxcb xcb-util xcb-util-wm xcb-util-keysyms # dependencies
pacman -S bspwm sxhkd rofi xsel xdo wmctrl
paru -S bsp-layout polybar picom
pacman -S 

# Bspwm & Sxhkd initial config
mkdir -p ~/.config/{bspwm,sxhkd}
install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc
chmod u+x ~/.config/bspwm/bspwmrc
setxkbmap latam # latam keyboard layout
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

### Fonts

```bash
# fc-list <- to see all fonts
pacman -S ttf-dejavu ttf-liberation ttf-ms-fonts
paru -S nerd-fonts-complete
```

### Apps

```bash
pacman -S copyq xsel flameshot sxiv rofi
paru -S anydesk-bin bitwarden balena-etcher google-chrome mailspring
```

### CLI

```bash
pacman -S starship trash-cli zsh zsh-autosuggestions zsh-syntax-highlighting
paru -S autojump-rs glow lf pistol-git dragon-drag-and-drop
```

### Software development

```bash
pacman -S bpython lazygit gnome-keyring
paru -S color-picker figma-linux neovim-git visual-studio-code-bin
```

### Comunication

```bash
paru -S discord whatsdesk-bin telegram-desktop-bin zoom
```

### Education

```bash
paru -S anki obsidian
```

### Office

```bash
pacman -S zathura zathura-pdf-mupdf
```

### Search

```bash
pacman -S fd fzf ripgrep
```

### Edition & Video recorders

```bash
pacman -S obs-studio simplescreenrecorder
paru -S gimp olive
```

### Keyboard stuff

```bash
pacman -S numlockx
```

### Utilities

```bash
pacman -S dunst bat lsd neofetch redshift redshift screenkey
pacman -S speedtest-cli xwallpaper tty-clock
pacman -S lxappearance
paru -S bottom cpufetch-git duf pfetch
```
