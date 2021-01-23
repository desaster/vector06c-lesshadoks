FROM ubuntu:16.04
MAINTAINER Upi Tamminen <desaster@gmail.com>

USER root

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    make \
    unrar-free \
    autoconf \
    automake \
    libtool \
    gcc \
    g++ \
    gperf \
    flex \
    bison \
    texinfo \
    gawk \
    ncurses-dev \
    libexpat-dev \
    python-dev \
    python \
    python-serial \
    python-pip \
    python-setuptools \
    sed \
    git \
    unzip \
    bash \
    help2man \
    wget \
    bzip2 \
    libtool-bin \
    patch \
    make \
    python \
    python-serial \
    bash \
    git

RUN pip install --upgrade pip

RUN useradd --uid 1000 build

RUN cd /tmp && \
    wget -O esptool2.zip https://github.com/raburton/esptool2/archive/91759a7c4faec1b7bc8410166d22ed92eb90556c.zip && \
    unzip esptool2.zip && \
    cd esptool2-* && \
    make && cp esptool2 /usr/local/bin/ && \
    cd .. && rm -rf esptool-*

RUN cd /tmp && \
    wget -O esptool.zip https://github.com/espressif/esptool/archive/a84731c381115ade80da02d5429bbf331b2f41e9.zip && \
    unzip esptool.zip && \
    mv esptool-* /opt/esptool

RUN cd /opt && \
    git clone https://github.com/pfalcon/esp-open-sdk.git && \
    cd esp-open-sdk && \
    git submodule update --init && \
    chown 1000:1000 . -R
    #git reset --hard 5518fb6116c35a02ccb9a87260bb194a57cb429e && \

# esp-open-sdk build must NOT be performed by root
USER build
RUN cd /opt/esp-open-sdk && \
    make STANDALONE=y

WORKDIR /home/build
ENV PATH="/opt/esp-open-sdk/xtensa-lx106-elf/bin::/opt/esptool:${PATH}"
ENV SDK_BASE=/opt/esp-open-sdk/ESP8266_NONOS_SDK-2.1.0-18-g61248df
ENV ESPTOOL2="/usr/local/bin/esptool2"
