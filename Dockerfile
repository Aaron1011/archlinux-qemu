FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y wget ssh qemu libvirt-dev libvirt-bin ebtables dnsmasq-base libxslt-dev libxml2-dev zlib1g-dev ruby
RUN wget https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.deb
RUN dpkg -i vagrant_2.2.5_x86_64.deb
RUN vagrant plugin install vagrant-libvirt

COPY Vagrantfile /
COPY start_libvirt.sh /
COPY do_vagrant_build.sh /
COPY do_run.sh /
#RUN cat /lib/systemd/system/libvirtd.service
#RUN bash ./do_vagrant_build.sh

#ENTRYPOINT ./start_libvirt.sh && vagrant ssh --command
#CMD ["/bin/bash"]
