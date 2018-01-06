FROM alpine:latest
#ARG sims="vax vax780 vax8600 pdp11 pdp8"
ARG sims=" "

ENV BUILDPKGS "git gcc libc-dev make vde2-dev libpcap-dev linux-headers readline-dev"
ENV RUNPKGS "net-tools vde2 vde2-libs libpcap nano readline bash"

RUN apk --update add $RUNPKGS && rm -rf /var/cache/apk/*  && \
  apk --update add --virtual build-dependencies $BUILDPKGS && \
	git clone git://github.com/simh/simh.git && \
	cd simh && \
	sed -e "s/\$(error Retry your build without specifying USE_NETWORK=1)/# SUPRESSED /g" makefile > makefile2 && \
	make LIBPATH=/usr/lib INCPATH=/usr/include USE_NETWORK=1 -f -j$(grep -c '^processor' /proc/cpuinfo) makefile2 $sims && \
	mkdir /simh-bin && cp BIN/* /simh-bin && \
	apk del build-dependencies && \
	rm -rf /workdir && \
	rm -rf /var/cache/apk/* 

ENV PATH /simh-bin:$PATH

EXPOSE 2323-2326

VOLUME /machines
WORKDIR /machines

ENTRYPOINT ["busybox", "sh"]
