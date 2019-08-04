#! /bin/bash
set -e
apt-get install iproute2
ip addr
./start_libvirt.sh

vagrant up --provider=libvirt
# 'Nuclear option' from https://forum.manjaro.org/t/issues-with-signature-is-marginal-trust-or-invalid-or-corrupted-package/33268/5
# Workaround for https://github.com/archlinux/arch-boxes/issues/41
vagrant ssh -c "sudo rm -fr /etc/pacman.d/gnupg"
vagrant ssh -c "sudo pacman-key --init"
vagrant ssh -c "sudo pacman-key --populate archlinux"
vagrant ssh -c "sudo pacman-key --refresh-keys"
vagrant reload
vagrant rsync
