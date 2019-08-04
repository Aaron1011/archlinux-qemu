#!/bin/sh
set -e

./start_libvirt.sh
vagrant up
vagrant ssh --command "$@"
