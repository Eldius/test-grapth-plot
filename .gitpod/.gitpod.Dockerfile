FROM gitpod/workspace-full

RUN sudo apt-get update \
 && sudo apt-get install -y \
    libsdl2-dev \
 && sudo rm -rf /var/lib/apt/lists/*
