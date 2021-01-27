FROM ubuntu:16.04
MAINTAINER Upi Tamminen <desaster@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

# http://download.altera.com/akdlm/software/acdsinst/17.1std/590/ib_tar/Quartus-lite-17.1.0.590-linux.tar
ARG QUARTUS=QuartusLiteSetup-17.1.0.590-linux.run
#ARG QUARTUS_UPDATE=
ARG DEVICE_FILES="cyclone-17.1.0.590.qdz"

USER root

#
# stuff for esp8266
#

RUN dpkg --add-architecture i386

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    locales \
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
    git \
    ssh

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

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

#
# stuff for quartus
#
#

USER root

RUN apt-get install --no-install-recommends -y \
    ca-certificates \
    lib32ncurses5-dev \
    libcurl3 \
    libc6:i386 \
    libcrypto++9v5 \
    libfontconfig1 \
    libglib2.0-0 \
    libncurses5:i386 \
    libsm6 \
    libssl-dev \
    libstdc++6:i386 \
    libxext6:i386 \
    libxft2:i386 \
    libxrender1 \
    libzmq3-dev \
    locales \
    make \
    openjdk-8-jdk \
    pkg-config \
    unixodbc-dev \
    wget \
    xauth \
    xvfb

RUN cd /tmp && \
    wget -O quartus.tar "http://download.altera.com/akdlm/software/acdsinst/17.1std/590/ib_tar/Quartus-lite-17.1.0.590-linux.tar" && \
    tar xvf quartus.tar components/QuartusLiteSetup-17.1.0.590-linux.run components/cyclone-17.1.0.590.qdz && \
    cd components && \
    chmod +x *.run && \
    ./QuartusLiteSetup-17.1.0.590-linux.run --accept_eula 1 --mode unattended --installdir /opt/altera/ && \
    cd && \
    rm -rf /tmp/components /opt/altera/uninstall -rf

# alternative version because downloading every time is slow:
#COPY installers/QuartusLiteSetup-17.1.0.590-linux.run /tmp/
#COPY installers/cyclone-17.1.0.590.qdz /tmp/
#RUN cd /tmp && \
#    chmod +x *.run && \
#    ./QuartusLiteSetup-17.1.0.590-linux.run --accept_eula 1 --mode unattended --installdir /opt/altera/ && \
#    rm /tmp/* /opt/altera/uninstall -rf

# These files conflict with the Ubuntu versions and cause random segfaults.
#RUN rm /opt/altera/quartus/linux64/libccl_curl_drl.so \
#    /opt/altera/quartus/linux64/libcrypto.so.1.0.0 \
#    /opt/altera/quartus/linux64/libcurl.so.4 \
#    /opt/altera/quartus/linux64/libssl.so.1.0.0

#
# final setup
#
#

WORKDIR /home/build
ENV PATH="/opt/esp-open-sdk/xtensa-lx106-elf/bin::/opt/esptool:/opt/altera/quartus/bin:${PATH}"
ENV SDK_BASE=/opt/esp-open-sdk/ESP8266_NONOS_SDK-2.1.0-18-g61248df
ENV ESPTOOL2="/usr/local/bin/esptool2"
