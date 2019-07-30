sudo chown -R 777 /var/run/libvirt/ # It's CI - who cares about perms?
newgrp libvirt

sudo vagrant up --provider=libvirt

# 'Nuclear option' from https://forum.manjaro.org/t/issues-with-signature-is-marginal-trust-or-invalid-or-corrupted-package/33268/5
# Workaround for https://github.com/archlinux/arch-boxes/issues/41
sudo vagrant ssh -c "sudo rm -fr /etc/pacman.d/gnupg"
sudo vagrant ssh -c "sudo pacman-key --init"
sudo vagrant ssh -c "sudo pacman-key --populate archlinux"
sudo vagrant ssh -c "sudo pacman-key --refresh-keys"
sudo vagrant reload

sudo vagrant rsync
sudo vagrant ssh -c "ls -l /vagrant"
sudo vagrant ssh -c "uname -a"
