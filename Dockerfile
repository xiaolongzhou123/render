FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y shellinabox curl dnsutils iproute2 net-tools  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'root:metahubs' | chpasswd

EXPOSE 22

CMD ["/usr/bin/shellinaboxd","-t","-s","/:LOGIN"]
