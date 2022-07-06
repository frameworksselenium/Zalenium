#!/bin/sh

if [ "$( docker container inspect -f '{{.State.Running}}' zalenium )" == "true" ]; then
    sudo docker stop zalenium
    #sudo docker rm zalenium
fi