.PHONY: run
run:
	docker run --rm --net host -e DISPLAY=$(DISPLAY) \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(HOME)/.Xauthority:/root/.Xauthority \
		-v `pwd`/workspace:/workspace \
		-t qucs/qucs

.PHONY: build
build: Dockerfile
	docker build -t ice40-tools .
