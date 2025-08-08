build:
	docker build -t flutter:$(tag) .

publish:
	docker image tag flutter:$(tag) hardandheavy/flutter:$(tag)
	docker push hardandheavy/flutter:$(tag)
	docker image tag flutter:$(tag) hardandheavy/flutter:latest
	docker push hardandheavy/flutter:latest

pull:
	docker pull hardandheavy/flutter:latest

bash:
	docker run -it --rm \
		--net=host \
		-v ./app:/app \
		-v ./app.mk:/app/Makefile \
		-v ./.root:/root \
		-v ./.keystore:/.keystore \
		-v ./.cache:/sdks/flutter/bin/cache \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-e DISPLAY=$(DISPLAY) \
		--privileged \
		-v /dev/bus/usb:/dev/bus/usb \
		hardandheavy/flutter:latest	bash

display-on:
	xhost +local:

display-off:
	xhost -local:
