FROM debian:sid
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y inspircd
RUN	mkdir -p /etc/inspircd/conf && \
	mkdir -p /usr/lib/inspircd/logs/ && \
	chown 1000 /usr/lib/inspircd/logs/
ADD inspircd.conf /etc/inspircd/conf/
CMD ["/usr/sbin/inspircd", "--config", "/etc/inspircd/conf/inspircd.conf", "--debug", "--nofork", "start"]
