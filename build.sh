docker-compose build
docker-compose up
docker commit -c 'ENTRYPOINT ["do_run.sh"]' -c 'CMD ["/bin/bash"]' ubuntu-vagrant final-ubuntu-vagrant
