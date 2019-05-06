FROM nvidia/cuda:6.5-devel-ubuntu14.04

RUN apt-get -y update -qq
RUN apt-get install -y git
RUN apt-get install -y cmake
RUN git clone https://github.com/NVlabs/nvbio.git
RUN mkdir -p /nvbio/build
WORKDIR /nvbio/build
RUN cmake ..
RUN make -j8

