FROM debian:latest

RUN apt update && apt install --assume-yes python3-pip python3-venv 
RUN	apt install --assume-yes python-pip
RUN 	pip3 install --upgrade tensorflow
RUN useradd -ms /bin/bash tfuser
USER tfuser
WORKDIR /home/tfuser