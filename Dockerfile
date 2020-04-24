# Apparantly, docker installation on centos behaves differently from that on
# ubuntu / mac. Hence any changes in this file should be tested across both.

FROM ubuntu:20.04
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    #
    # install C++ tools
    && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    autoconf        \
    build-essential \
    ca-certificates \
    cppcheck        \
    curl            \
    git             \
    iproute2        \
    libtool         \
    openssl         \
    pkg-config      \
    valgrind        \
    vim             \
    #
    # install fairly modern version of CMake
    && CMAKE_VERSION=3.17.0 \
    && curl -kL -o ./cmake.sh https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-Linux-x86_64.sh \
    && chmod +x ./cmake.sh && ./cmake.sh -- --skip-license --prefix=/usr/local && rm ./cmake.sh \
    #
    # get boost and build it
    && curl -kL https://dl.bintray.com/boostorg/release/1.72.0/source/boost_1_72_0.tar.gz \
        | tar -C /home/ -xzvf - \
    && cd /home/boost_1_72_0 && mkdir -p /home/boost && ./bootstrap.sh --prefix=/home/boost \
    && ./b2 install \
    #
    # setup project dir
    && mkdir -p /home/exp
COPY . /home/exp
WORKDIR /home/exp
EXPOSE 5000
CMD ["/bin/bash"]
