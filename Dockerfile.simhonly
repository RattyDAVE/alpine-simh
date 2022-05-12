#Dockerfile-latest

FROM alpine:edge

ENV BUILDPKGS "git gcc libc-dev make vde2-dev libpcap-dev linux-headers readline-dev"
ENV RUNPKGS "net-tools vde2 vde2-libs libpcap nano readline bash curl wget unzip"

RUN apk -q --update --no-cache add $RUNPKGS && \
    apk -q --no-cache add --virtual build-dependencies $BUILDPKGS && \
    mkdir /usr/src && cd /usr/src && git clone git://github.com/simh/simh.git && \
    cd simh && \
    #sed -e "s/\$(error Retry your build without specifying USE_NETWORK=1)/# SUPRESSED /g" makefile > makefile2 && \
    #make LIBPATH=/usr/lib INCPATH=/usr/include USE_NETWORK=1 -j $(nproc) -f makefile2 all && \
    #make LIBPATH=/usr/lib INCPATH=/usr/include -j $(nproc) all  && \
    #RUN make LIBPATH=/usr/lib INCPATH=/usr/include && \
    make LIBPATH=/usr/lib INCPATH=/usr/include -j $(nproc) -i -k -s all && \
    apk -q del build-dependencies && \
    rm -rf /var/cache/apk/* && \
    mkdir /machines 
  
ENV PATH /usr/src/simh/BIN:$PATH

EXPOSE 2323-2326

WORKDIR /machines

ENTRYPOINT ["busybox", "sh"]
