#!/bin/sh

if [ ! "$(docker ps -q -f name=kmanubolu_dashboard)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=kmanubolu_dashboard)" ]; then
        # cleanup
        sudo docker stop kmanubolu_dashboard
        sudo docker rm kmanubolu_dashboard
    fi
    echo kmanubolu_dashboard killed
fi