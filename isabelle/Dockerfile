## Dockerfile for Isabelle2019
FROM debian:latest
SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && \
  apt-get install -y curl less libfontconfig1 libgomp1 libwww-perl rlwrap unzip libxext6 libxrender1 libxtst6  && \
  apt-get clean

# user
RUN useradd -m isabelle && (echo isabelle:isabelle | chpasswd)
USER isabelle
WORKDIR /home/isabelle
COPY Isabelle.tar.gz .

RUN tar xzf Isabelle.tar.gz && \
  rm Isabelle.tar.gz && \
  mv Isabelle2019 Isabelle && \
  perl -pi -e 's,ISABELLE_HOME_USER=.*,ISABELLE_HOME_USER="\$USER_HOME/.isabelle",g;' Isabelle/etc/settings && \
  perl -pi -e 's,ISABELLE_LOGIC=.*,ISABELLE_LOGIC=HOL,g;' Isabelle/etc/settings && \
  Isabelle/bin/isabelle build -o system_heaps -b HOL

CMD ["Isabelle/bin/isabelle"]