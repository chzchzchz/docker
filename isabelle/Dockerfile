## Dockerfile for Isabelle2019
FROM debian:latest
SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && \
  apt-get install -y curl less libfontconfig1 libgomp1 libwww-perl rlwrap unzip libxext6 libxrender1 libxtst6  && \
  apt-get clean

RUN useradd -m isabelle && (echo isabelle:isabelle | chpasswd)
USER isabelle
WORKDIR /home/isabelle

COPY Isabelle.tar.gz afp-current.tar.gz ./

# NB: You can refer to article ABC from the AFP in some theory of yours via
#     imports "ABC.Some_ABC_Theory"

RUN tar xzf Isabelle.tar.gz && \
  mv Isabelle2019 Isabelle && \
  mkdir /home/isabelle/Isabelle/afp && \
  tar zxf afp-current.tar.gz -C /home/isabelle/Isabelle/afp --strip-components=1 && \
  rm Isabelle.tar.gz afp-current.tar.gz && \
  perl -pi -e 's,ISABELLE_HOME_USER=.*,ISABELLE_HOME_USER="\$USER_HOME/.isabelle",g;' Isabelle/etc/settings && \
  perl -pi -e 's,ISABELLE_LOGIC=.*,ISABELLE_LOGIC=HOL,g;' Isabelle/etc/settings && \
  echo "/home/isabelle/Isabelle/afp/thys" >> /home/isabelle/Isabelle/ROOTS && \
  Isabelle/bin/isabelle build -o system_heaps -b HOL

CMD ["Isabelle/bin/isabelle"]