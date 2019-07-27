.PHONY: build
build: Dockerfile Isabelle.tar.gz afp-current.tar.gz
	docker build -t isabelle .

Isabelle.tar.gz:
	wget -c https://isabelle.in.tum.de/dist/Isabelle2019_linux.tar.gz --output-document=$@

afp-current.tar.gz:
	wget -c https://www.isa-afp.org/release/afp-current.tar.gz --output-document=$@ 

# run with WORKSPACE="-v "`pwd`/ws":/home/isabelle/ws" to get a workspace

.PHONY: run-ide
run-ide:
	docker run --rm \
	--net host -e DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(HOME)/.Xauthority:/home/isabelle/.Xauthority \
	$(WORKSPACE) \
	isabelle \
	Isabelle/Isabelle2019
