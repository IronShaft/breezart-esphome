#!/bin/bash

if [ $# -lt 1 ]; then
    echo
    echo "Error: need one parameter"
    echo "Use $0 <config_name.yaml>"
    echo
    exit
fi

docker run --rm -v "${PWD}":/config -it esphome/esphome compile $1