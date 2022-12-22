FROM ubuntu
RUN mkdir -p /boot/strap/lfs
WORKDIR /boot/strap/lfs
RUN apt-get update  -y
RUN apt-get upgrade -y
RUN apt-get install -y git rcs vim vim-doc
RUN apt-get install -y vim-scripts     bash-completion      g++             make
RUN apt-get install -y gawk            python3              info            m4
RUN apt-get install -y automake        autoconf             libtool         xz-utils
RUN apt-get install -y openssh-server openssh-client openssh-sftp-server
COPY . .
RUN chmod +x bin/*
RUN [ "bash","-c", "bin/setup.sh" ]
RUN mkdir /run/sshd
CMD /sbin/sshd
