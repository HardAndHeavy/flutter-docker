FROM ghcr.io/cirruslabs/flutter:3.32.4

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    ninja-build \
    cmake \
    clang \
    pkg-config \
    libgtk-3-dev \
    liblzma-dev
