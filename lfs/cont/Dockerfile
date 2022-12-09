FROM ubuntu
WORKDIR /boot/strap/lfs
VOLUME /boot/strap:/boot/strap

RUN ln -sf bash /bin/sh
RUN apt-get update  -y
RUN apt-get upgrade -y
RUN apt-get install -y git             rcs                  vim             vim-doc
RUN apt-get install -y vim-scripts     bash-completion      g++             make
RUN apt-get install -y gawk            python3              info            m4
RUN apt-get install -y automake        autoconf             libtool         xz-utils
RUN apt-get install -y bison           texinfo              links2          wget
RUN apt-get install -y openssh-server  openssh-sftp-server  openssh-client  
RUN apt-get install -y inetutils-ping  net-tools                            

RUN touch testing
