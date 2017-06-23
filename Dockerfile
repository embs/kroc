FROM ioft/i386-ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y bash gcc binutils gawk make automake autoconf \
      pkg-config libc6-dev libsdl1.2-dev libsdl-sound1.2-dev libgl1-mesa-dev \
      libmysqlclient15-dev libpng12-dev libxmu-dev libxi-dev \
      libplayercore2-dev libplayerc2-dev libltdl3-dev \
      perl python xsltproc git

RUN git clone --depth 1 -b kroc-1.6 git://github.com/concurrency/kroc.git \
      kroc-git

RUN cd kroc-git && ./build --prefix=/usr/local/kroc

#RUN make check

RUN apt-get install -y vim

RUN cat /usr/local/kroc/bin/kroc-setup.sh >> ~/.bashrc

COPY hello.occ /root/

CMD ["bash"]
