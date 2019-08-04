set -e
nohup /usr/sbin/libvirtd &
nohup /usr/sbin/virtlogd &
until [ -e /var/run/libvirt/libvirt-sock ] && [ -e /var/run/libvirt/virtlogd-sock ]
do
	echo Waiting for libvirtd...
	sleep 1;
done
echo Libvirtd and virtlogd started!
