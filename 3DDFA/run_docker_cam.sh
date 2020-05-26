#!/bin/bash

#docker run --gpus all -it -p 8888:8888 -p 6006:6006 -p 5000:5000 -v $(pwd):/workspace 3DDFA:1.0 /bin/bash
#docker run --gpus all -it -p 8888:8888 -p 6006:6006 -p 5000:5000 -v ~/Workspace/projects/FaceCapture:/workspace 3ddfa:1.0 /bin/bash

#docker run --gpus all -it -p 8888:8888 -p 6006:6006 -p 5000:5000 --ipc=host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -v ~/Workspace/projects/FaceCapture:/workspace 3ddfa:1.0 /bin/bash

# camera
docker run --gpus all -it -p 8888:8888 -p 6006:6006 -p 5000:5000 --ipc=host --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -v ~/Workspace/projects/FaceCapture:/workspace 3ddfa:1.0 /bin/bash






