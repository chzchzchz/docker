.PHONY: build
build:
	docker build -t java-dev .

.PHONY: test
test: build
	docker run -it 	\
		-v `pwd`/hello:/project/ \
		--rm java-dev /bin/echo "hi"

# docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:7 javac Main.java

