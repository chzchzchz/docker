.PHONY: build
build: Dockerfile tapaal-3.6.0-linux64.zip
	docker build -t tapaal .

tapaal-3.6.0-linux64.zip:
	wget -c http://www.tapaal.net/fileadmin/download/tapaal-3.6/tapaal-3.6.0-linux64.zip

.PHONY: run-ide
run-ide:
	mkdir -p ws
	docker run --rm \
	--net host -e DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(HOME)/.Xauthority:/home/tapaal/.Xauthority \
	-v `pwd`/ws/:/home/tapaal/tapaal-3.6.0/lib/ws/ \
	tapaal
