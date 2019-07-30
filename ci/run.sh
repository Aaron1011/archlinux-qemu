sudo chown -R 777 /var/run/libvirt/ # It's CI - who cares about perms?
newgrp libvirtd
vagrant up --provider=libvirt
