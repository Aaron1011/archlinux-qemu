#! /bin/bash
set -xe
cat /etc/resolv.conf
ip addr
apt-get install  -o Acquire::ForceIPv4=true -y iproute2 telnet
ip addr
./start_libvirt.sh

vagrant box update
vagrant up --provider=libvirt
#vagrant ssh -c "sudo pacman-key --init"
#vagrant ssh -c "sudo pacman-key --refresh-keys"
#vagrant ssh -c "ifconfig"
#vagrant ssh -c "ip addr"
#vagrant ssh -c "sudo gpg --homedir /etc/pacman.d/gnupg --list-keys"
#vagrant ssh -c "sudo pacman -Sy --noconfirm archlinux-keyring"

# 'Nuclear option' from https://forum.manjaro.org/t/issues-with-signature-is-marginal-trust-or-invalid-or-corrupted-package/33268/5
# Workaround for https://github.com/archlinux/arch-boxes/issues/41
#vagrant ssh -c "sudo rm -rf /etc/pacman.d/gnupg"
#vagrant ssh -c "sudo pacman-key --init"
#vagrant ssh -c "sudo pacman-key --populate archlinux"
#vagrant ssh -c "sudo pacman-key --refresh-keys"

vagrant ssh -c "sudo pacman -Syu --noconfirm"

# Install yay
#vagrant ssh -c "sudo pacman -Syu --noconfirm git base-devel"
#vagrant ssh -c "git clone https://aur.archlinux.org/yay.git"
#vagrant ssh -c "cd yay; makepkg -si --noconfirm"
#vagrant ssh -c "makepkg -si"

# Install latest Linux kerenel RC
#vagrant ssh -c "yay -S --noconfirm linux-mainline"

vagrant reload
vagrant rsync
