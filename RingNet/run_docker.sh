#!/usr/bin/env bash

nvidia-docker run --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -p 5000:5000 -p 8888:8888 -it -v $(pwd):/workspace aunets:2.0 /bin/bash
