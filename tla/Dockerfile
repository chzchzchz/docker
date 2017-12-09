FROM java:openjdk-8-jre
RUN apt-get update
RUN apt-get install --assume-yes --no-install-suggests --no-install-recommends unzip
RUN apt-get install --assume-yes --no-install-suggests --no-install-recommends libgtk2.0

ADD TLAToolbox-1.5.3-linux.gtk.x86_64.zip /tla.zip
RUN unzip /tla.zip && rm tla.zip

ENTRYPOINT ./toolbox/toolbox