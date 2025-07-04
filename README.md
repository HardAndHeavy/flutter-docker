# Flutter in Docker
Running Flutter in a [Docker container](https://hub.docker.com/repository/docker/hardandheavy/flutter/general).

### Requirements
- Ubuntu
- make
- Docker

### Run
```
make bash
# Inside the container
make init
make install
make run
# To run on a phone connected to USB
make list-devices
# Select the device ID from the list
flutter run -d ID_DEVICE
```
