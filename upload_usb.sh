#!/bin/bash

if [ $# -lt 2 ]; then
    echo
    echo "Error: need two parameters"
    echo "Use $0 <config_name.yaml> <usb_device>"
    echo
    exit
fi

docker run --rm -v "${PWD}":/config --device=$2 --net=host -it esphome/esphome run $1