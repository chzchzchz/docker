.PHONY: run
run:
	docker run --rm -p 127.0.0.1:9050:9050 -t tor-socks5

.PHONY: build
build: Dockerfile
	docker build -t tor-socks5 .
