#!/bin/bash

if [ $# -lt 1 ]; then
    echo
    echo "Error: need one parameter"
    echo "Use $0 <config_name.yaml>"
    echo
    exit
fi

docker run --rm -v "${PWD}":/config --net=host -it esphome/esphome logs $1