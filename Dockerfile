FROM nvidia/cuda:6.5-devel-ubuntu14.04

RUN apt-get -y update -qq
RUN apt-get install -y git
RUN apt-get install -y cmake
RUN git clone https://github.com/NVlabs/nvbio.git
WORKDIR /nvbio
# checking out the last update based on cuda 6.5 and ubuntu 14.04
# published Nov 10, 2015. Later updates might be for newer cuda etc
RUN git checkout 9bb7e6363c65f65e46f21df09bef98e404250f10
RUN mkdir -p /nvbio/build
WORKDIR /nvbio/build
RUN cmake ..
RUN make -j8


