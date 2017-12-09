.PHONY: run
run: build workspace
	docker run --rm --net host -e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(HOME)/.Xauthority:/root/.Xauthority \
		-v `pwd`/workspace:/workspace -t tla . start

.PHONY: build
build: tla.zip Dockerfile
	docker build -t tla .

workspace:
	mkdir -p workspace

tla.zip: TLAToolbox-1.5.3-linux.gtk.x86_64.zip
	cp $^ tla.zip

TLAToolbox-1.5.3-linux.gtk.x86_64.zip:
	wget https://tla.msr-inria.inria.fr/tlatoolbox/products/$@
