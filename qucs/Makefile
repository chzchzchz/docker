.PHONY: run
run:
	docker run --rm --net host -e DISPLAY=$(DISPLAY) \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(HOME)/.Xauthority:/root/.Xauthority \
		-v `pwd`/workspace:/workspace \
		-t qucs/qucs


.PHONY: run2
run2:
	docker run --rm \
	--volume /tmp/.X11-unix:/tmp/.X11-unix \
	--env DISPLAY=$(DISPLAY) \
	--env RUNUSER_UID=$(shell id -u) \
	--volume ~/workspace:/home/.qucs \
	qucs/qucs 

