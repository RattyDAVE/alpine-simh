FROM alpine:latest
#ARG sims="vax vax780 vax8600 pdp11 pdp8"
ARG sims="all"

ENV BUILDPKGS "git gcc libc-dev make vde2-dev libpcap-dev linux-headers readline-dev"
ENV RUNPKGS "net-tools vde2 vde2-libs libpcap nano readline bash"

RUN apk --update --no-cache add $RUNPKGS && rm -rf /var/cache/apk/*
RUN apk --update --no-cache add --virtual build-dependencies $BUILDPKGS
RUN pwd
RUN git clone git://github.com/simh/simh.git

RUN cd simh && sed -e "s/\$(error Retry your build without specifying USE_NETWORK=1)/# SUPRESSED /g" makefile > makefile2
RUN cd simh && make LIBPATH=/usr/lib INCPATH=/usr/include USE_NETWORK=1 -f makefile2 $sims
RUN cd simh && 	mkdir /simh-bin && cp BIN/* /simh-bin
RUN apk del build-dependencies
RUN rm -rf /var/cache/apk/* 

ENV PATH /simh-bin:$PATH

EXPOSE 2323-2326

VOLUME /machines
WORKDIR /machines

ENTRYPOINT ["busybox", "sh"]
