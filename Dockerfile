FROM alpine:latest

ENV BUILDPKGS "git gcc libc-dev make vde2-dev libpcap-dev linux-headers readline-dev"
ENV RUNPKGS "net-tools vde2 vde2-libs libpcap nano readline bash"

RUN apk --update --no-cache add $RUNPKGS && rm -rf /var/cache/apk/* && \
    apk --no-cache add --virtual build-dependencies $BUILDPKGS && \
    cd /root && \
    git clone git://github.com/simh/simh.git  && \
    cd /simh && sed -e "s/\$(error Retry your build without specifying USE_NETWORK=1)/# SUPRESSED /g" makefile > makefile2 && \
    make LIBPATH=/usr/lib INCPATH=/usr/include USE_NETWORK=1 -f makefile2 all && \
    mkdir /simh-bin && cp BIN/* /simh-bin && \
    apk del build-dependencies && \
    rm -rf /var/cache/apk/* 

ENV PATH /simh-bin:$PATH

EXPOSE 2323-2326

VOLUME /machines
WORKDIR /machines

ENTRYPOINT ["busybox", "sh"]
