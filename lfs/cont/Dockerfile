FROM ubuntu
WORKDIR /boot/strap/lfs
#USER root

#COPY /boot/strap/lfs/apt-install.pl .
RUN ln -sf bash /bin/sh
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y bison texinfo links2 wget
RUN apt-get install -y openssh-server openssh-sftp-server openssh-client inetutils-ping
RUN apt-get install -y net-tools flex rsync
RUN mkdir -p /boot/strap/lfs/.
RUN ls /boot/ > /boot/list
RUN ls /boot/strap/ > /boot/strap/list
RUN ls /boot/strap/lfs/ > /boot/strap/lfs/list
#COPY /boot/strap/lfs/. /boot/strap/lfs/.

#source etc/env.sh
#bin/version_check.sh
#bin/create_base_dirs.sh
#bin/create_base_dirs.sh
#bin/create_lfs_user.sh
#bin/set_lfs_ownership.sh
#chown -R lfs.lfs ~lfs
#sudo -u lfs bash -c "source ~/etc/env.sh; cd; bash bin/populate_lfs_home.sh"
