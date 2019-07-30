sudo apt-get update
sudo apt-get install qemu libvirt-bin ebtables dnsmasq-base
sudo apt-get install libxslt-dev libxml2-dev zlib1g-dev ruby
wget https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.deb
sudo dpkg -i vagrant_2.2.5_x86_64.deb
vagrant plugin install vagrant-libvirt
