FROM debian:sid
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y iverilog yosys arachne-pnr fpga-icestorm make
# not deleted to get layers
# RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
