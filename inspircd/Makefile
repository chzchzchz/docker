.PHONY: run
run:
	docker run --rm --net host -u 1000 inspircd

.PHONY: build
build: Dockerfile
	docker build -t inspircd .
