# Flutter in Docker
Running Flutter in a [Docker container](https://hub.docker.com/repository/docker/hardandheavy/flutter/general).

### Requirements
- Ubuntu
- make
- Docker

### Run
```bash
make bash
make display-on
```

Inside the container
```bash
make init
make install
make run
```

To run on a phone connected to USB select the device ID from the list with the `make list-devices` command. And run Flutter:
```bash
flutter run -d ID_DEVICE
```
