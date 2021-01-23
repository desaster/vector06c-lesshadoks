#!/bin/sh
#
# Handy dandy helper script for building the esp8266 firmware, and the
# development environment docker image
#
# parameters:
#   build_image     build the docker image needed for the rest of the commands
#   build           build the esp8266 firmware
#   clean           clean the esp8266 firmware
#   flash           flash the esp8266 firmware
#                   (supply device name as an optional second parameter)

set -e

BASEDIR="/home/build"
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)
DOCKER_IMAGE="localhost/shadok-builder"

run_container() {
    local workdir="$1"
    local cmd="$2"
    local device="$3"
    if [ "$device" != "" ]; then
        device="--device=$device --env ESPPORT=$device"
    fi
    docker run \
        -it --rm \
        -v "$SCRIPT_DIR":/home/build \
        --userns=keep-id \
        $device \
        --user=$(id -ur):$(id -gr) \
        --workdir "$workdir" \
        "$DOCKER_IMAGE" $cmd
}

if [ "$1" == "build" ]; then
    echo ":: Building rboot"
    run_container "$BASEDIR/esp8266/cosmogol999/rboot/" "make"
    echo ":: Building cosmogol999"
    run_container "$BASEDIR/esp8266/cosmogol999/" "make"
elif [ "$1" == "flash" ]; then
    if [ "$2" != "" ]; then
        DEVICE="$2"
    else
        DEVICE="/dev/ttyUSB0"
    fi
    echo ":: Flashing cosmogol999"
    run_container "$BASEDIR/esp8266/cosmogol999/" "make flash" "$DEVICE"
elif [ "$1" == "clean" ]; then
    echo ":: Building rboot"
    run_container "$BASEDIR/esp8266/cosmogol999/rboot/" "make clean"
    echo ":: Building cosmogol999"
    run_container "$BASEDIR/esp8266/cosmogol999/" "make clean"
elif [ "$1" == "build_image" ]; then
    echo ":: Building docker image"
    docker build -f Dockerfile.builder -t "$DOCKER_IMAGE" .
else
    echo "Usage: $(basename $0) <build|build_image|clean|flash>"
    exit 2
fi
