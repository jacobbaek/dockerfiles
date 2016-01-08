FROM dubaek/ubuntu
MAINTAINER doun baek <dubaek@gmail.com>

RUN apt-get -qqy install libpcre3 \
    libpcre3-dbg libpcre3-dev \
    build-essential autoconf automake libtool \
	libpcap-dev libnet1-dev \
    libyaml-0-2 libyaml-dev zlib1g zlib1g-dev \
	libcap-ng-dev libcap-ng0 \
    make libmagic-dev libjansson-dev libjansson4 \
	pkg-config

RUN wget http://www.openinfosecfoundation.org/download/suricata-2.0.11.tar.gz
RUN tar xvzf suricata-2.0.11.tar.gz
RUN cd suricata-2.0.11
RUN ./configure && make && sudo make install-full

