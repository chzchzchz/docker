#.PHONY: run
#run: build
#	docker run --rm -t -i --device /dev/dri:/dev/dri opencl clinfo

.PHONY: build
build: Dockerfile Isabelle.tar.gz
	docker build -t isabelle .

Isabelle.tar.gz:
	wget -c https://isabelle.in.tum.de/dist/Isabelle2019_linux.tar.gz --output-document=$@

run-ide:
	docker run --rm \
	--net host -e DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(HOME)/.Xauthority:/home/isabelle/.Xauthority \
	isabelle \
	Isabelle/Isabelle2019
