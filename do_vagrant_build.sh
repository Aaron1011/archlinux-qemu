#! /bin/bash
set -xe
apt-get install iproute2
ip addr
./start_libvirt.sh

vagrant box update
vagrant up --provider=libvirt
vagrant ssh -c "sudo pacman -S --noconfirm git"
vagrant ssh -c "git clone https://aur.archlinux.org/yay.git"
vagrant ssh -c "cd yay"
vagrant ssh -c "makepkg -si"
vagrant ssh -c "yay -S --noconfirm linux-mainline"

# 'Nuclear option' from https://forum.manjaro.org/t/issues-with-signature-is-marginal-trust-or-invalid-or-corrupted-package/33268/5
# Workaround for https://github.com/archlinux/arch-boxes/issues/41
#vagrant ssh -c "sudo rm -fr /etc/pacman.d/gnupg"
#vagrant ssh -c "sudo pacman-key --init"
#vagrant ssh -c "sudo pacman-key --populate archlinux"
#vagrant ssh -c "sudo pacman-key --refresh-keys"
#vagrant reload
#vagrant rsync
