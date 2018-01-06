FROM alpine:edge

ENV BUILDPKGS "git gcc libc-dev make vde2-dev libpcap-dev linux-headers readline-dev wget unzip"
ENV RUNPKGS "net-tools vde2 vde2-libs libpcap nano readline bash"

RUN apk --update --no-cache add $RUNPKGS && rm -rf /var/cache/apk/* && \
    apk --no-cache add --virtual build-dependencies $BUILDPKGS && \
    mkdir /usr/src && cd /usr/src && \
    git clone git://github.com/simh/simh.git  && \
    cd simh && \
    sed -e "s/\$(error Retry your build without specifying USE_NETWORK=1)/# SUPRESSED /g" makefile > makefile2 && \
    make LIBPATH=/usr/lib INCPATH=/usr/include USE_NETWORK=1 -f makefile2 all && \
\   
    mkdir /machines && \
    cd /machines && \
\
    mkdir /machines/altairz80 && \
    cd /machines/altairz80 && \
    wget https://schorn.ch/cpm/zip/cpm3.zip && \
    unzip cpm3.zip && \
    rm cpm3.zip && \
    wget http://www.retroarchive.org/cpm/games/zork123_80.zip && \
    unzip zork123_80.zip && \
    rm zork123_80.zip && \
\
    mkdir /machines/altair && \
    cd /machines/altair && \
    wget http://schorn.ch/cpm/zip/altsw.zip && \
    unzip altsw.zip && \
    rm altsw.zip && \
\
    apk del build-dependencies && \
    rm -rf /var/cache/apk/* 

ENV PATH /usr/src/simh/BIN:$PATH

EXPOSE 2323-2326

WORKDIR /machines

ENTRYPOINT ["busybox", "sh"]
