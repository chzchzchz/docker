#!/bin/bash
mkdir -p workspace/
docker build -t tla .
docker run --net host -e DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $HOME/.Xauthority:/root/.Xauthority \
	-v `pwd`/workspace:/workspace -t tla . start
