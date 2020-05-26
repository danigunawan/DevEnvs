#!/bin/bash

#docker run --gpus all -it -p 8888:8888 -p 6006:6006 -p 5000:5000 -v $(pwd):/workspace prnet:1.0 /bin/bash
docker run --gpus all -it -p 8888:8888 -p 6006:6006 -p 5000:5000 --ipc=host --net=host -e XAUTHORITY=/root/.Xauthority -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro -v /home/user/.Xauthority:/root/.Xauthority -v ~/Workspace/projects/FaceCapture:/workspace adaptivewingloss:1.0 /bin/bash

#docker run --gpus all -it -p 8888:8888 -p 6006:6006 -p 5000:5000 -v ~/Workspace/projects/FaceCapture:/workspace adaptivewingloss:1.0 /bin/bash
