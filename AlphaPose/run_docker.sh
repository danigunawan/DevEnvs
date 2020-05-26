#!/usr/bin/env bash

#nvidia-docker run --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -p 5000:5000 -p 8888:8888 -it -v $(pwd):/workspace auheatmaps:1.0 /bin/bash

# --device=/dev/video0:/dev/video0 for webcam
docker run --gpus all -v /tmp/.X11-unix:/tmp/.X11-unix --device=/dev/video0:/dev/video0 -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -p 5000:5000 -p 8888:8888 -p 6006:6006 -it -v ~/Workspace/projects/FaceCapture:/workspace alphapose:1.0 /bin/bash

# local computer run once
# xhost +local:docker
# apt install -y libsm6 libxext6 libxrender-dev
