#!/bin/bash
docker run -it --init \
    -p 8888:8888 \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    getproper/jupyter