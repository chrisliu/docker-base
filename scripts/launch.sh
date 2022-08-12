#!/bin/bash

source $(dirname -- $0)/globals.sh

# WARNING:When mounting the home directory, Docker will also include any
#         dotfiles (e.g., .bashrc)
docker run \
  --network host --detach -i \
  --cap-add SYS_ADMIN \
  --mount type=bind,src=$HOME,dst=$HOME \
  --name $CONTAINER_NAME $IMAGE_NAME
