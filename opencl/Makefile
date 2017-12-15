.PHONY: run
run: build
	docker run --rm -t -i --device /dev/dri:/dev/dri opencl clinfo

.PHONY: build
build: Dockerfile
	docker build -t opencl .
