#!/bin/bash

ROOM_NAME_PREFIX=$1
INSTANCE_URL=$2
JWT=$3

docker run  -it \
-v $(pwd)/../:/jitsi \
-w /jitsi \
maven \
/jitsi/scripts/malleus.sh \
--conferences=1 \
--participants=4 \
--senders=4 \
--audio-senders=4 \
--duration=600 \
--room-name-prefix=${ROOM_NAME_PREFIX} \
--hub-url=http://192.168.231.111:9444/wd/hub \
--instance-url=${INSTANCE_URL} \
--jwt=${JWT}

