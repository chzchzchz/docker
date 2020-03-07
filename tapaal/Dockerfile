FROM java:openjdk-9-jre
SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get install --allow-unauthenticated -y unzip libfontconfig1  && \
  apt-get clean

RUN useradd -m tapaal && (echo tapaal:tapaal | chpasswd)
USER tapaal
WORKDIR /home/tapaal

COPY tapaal-3.6.0-linux64.zip ./
RUN unzip tapaal-3.6.0-linux64.zip

CMD ["./tapaal-3.6.0-linux64/tapaal"]