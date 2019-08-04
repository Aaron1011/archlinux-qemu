# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
#

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "archlinux/archlinux"
  #config.vm.synced_folder "/vagrant", ".", disabled: true
  config.vm.provider :libvirt do |libvirt|
    libvirt.qemuargs(value: '--no-kvm')
    libvirt.driver = 'qemu'
  end

  config.vm.synced_folder './', '/vagrant', type: 'rsync', disabled: true


  #config.vm.network :public_network, :type => "user"
end
