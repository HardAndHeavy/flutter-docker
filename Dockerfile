FROM ghcr.io/cirruslabs/flutter:3.32.8

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    ninja-build \
    cmake \
    clang \
    pkg-config \
    libgtk-3-dev \
    liblzma-dev \
    tmux \
    inotify-tools

WORKDIR /app

COPY ./dev-web.sh /dev-web.sh

CMD ["/dev-web.sh"]
