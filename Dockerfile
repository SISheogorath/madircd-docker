FROM debian:jessie

MAINTAINER Sheogorath <sheogorath@shivering-isles.com>

RUN apt-get update && \
    apt-get install -y build-essential git libgnutls28-dev \
	gnutls-bin pkg-config libssl1.0.0 libssl-dev openssl \
	libcrypt-ssleay-perl libio-socket-ssl-perl libwww-perl \
	libgeoip1 libgeoip-dev geoip-database geoip-bin pkg-config \
	libpcre3 libpcre3-dev && \
    useradd -u 10000 -d /inspircd/ inspircd && \
    mkdir -p /src && \
	cd /src && \
    git clone https://github.com/Shivering-Isles/inspircd.git inspircd -b insp20 && \
    cd /src/inspircd && \
    ./configure --disable-interactive --prefix=/inspircd/ --uid 10000 --enable-openssl --enable-gnutls && \
    make && make install && \
    apt-get purge -y build-essential

VOLUME ["/inspircd/conf"]

EXPOSE 6667 6697

ENTRYPOINT ["/inspircd/bin/inspircd"]
CMD ["--runasroot", "--nofork"]
