#Dockerfile-latest

#FROM alpine:edge

#ENV BUILDPKGS "git gcc libc-dev make vde2-dev libpcap-dev linux-headers readline-dev"
#ENV RUNPKGS "net-tools vde2 vde2-libs libpcap nano readline bash curl wget unzip"

#COPY /machines/ /machines/

#RUN apk --update --no-cache add $RUNPKGS && rm -rf /var/cache/apk/* && \
#    apk --no-cache add --virtual build-dependencies $BUILDPKGS && \
#    mkdir /usr/src && cd /usr/src && \
#    git clone https://github.com/open-simh/simh.git
    
    #sed -e "s/\$(error Retry your build without specifying USE_NETWORK=1)/# SUPRESSED /g" makefile > makefile2 && \
    #make LIBPATH=/usr/lib INCPATH=/usr/include USE_NETWORK=1 -f makefile2 all
    
#RUN    cd /usr/src/simh && make LIBPATH=/usr/lib INCPATH=/usr/include -j $(nproc) all

#RUN    apk del build-dependencies && \
#    rm -rf /var/cache/apk/* && \
#    find /machines -name "*.sh" -exec chmod 755 {} \; 
    
#ENV PATH /usr/src/simh/BIN:$PATH
#EXPOSE 2323-2326
#WORKDIR /machines
#ENTRYPOINT ["busybox", "sh"]



FROM alpine:edge

COPY /machines/ /machines/

RUN apk add --no-cache \
    git \
    build-base \
    cmake \
    ninja \
    linux-headers

WORKDIR /usr/src

# Clone SIMH
RUN git clone https://github.com/open-simh/simh.git

WORKDIR /usr/src/simh

# Fix Alpine/musl compatibility
RUN sed -i 's/fopen64 (/fopen (/g' sim_fio.c && \
    sed -i 's/fseeko64 (/fseeko (/g' sim_fio.c && \
    sed -i 's/ftello64 (/ftello (/g' sim_fio.c && \
    sed -i 's/off64_t/off_t/g' sim_fio.c

# Build
RUN mkdir build

WORKDIR /usr/src/simh/build

ENV CFLAGS="-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE"
ENV CXXFLAGS="-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE"

RUN cmake -G Ninja \
    -DCMAKE_BUILD_TYPE=Release \
    -DWITH_VIDEO=OFF \
    ..

RUN ninja -j $(nproc)

RUN cmake --install .

# Make simulators available globally
RUN cp /usr/src/simh/SIMH-install/bin/* /usr/local/bin/

EXPOSE 2323-2326
WORKDIR /machines

CMD ["/bin/sh"]
