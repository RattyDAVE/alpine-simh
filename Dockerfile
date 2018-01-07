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
    mkdir /machines/3b2 && \
    cd /machines/3b2 && \
    # Taken From https://loomcom.com/3b2/emulator/ \
    echo "set cpu 4M" > 3b2 && \
    echo "set cpu idle" >> 3b2 && \
    echo "set id0 HD161" >> 3b2 && \
    echo "attach nvram nvram.bin" >> 3b2 && \
    echo "attach tod tod.bin" >> 3b2 && \
    echo "attach id0 hd161_extras.img" >> 3b2 && \
    echo "attach if floppy_disk.img" >> 3b2 && \
    echo "attach contty 8888" >> 3b2 && \
    echo "boot cpu" >> 3b2 && \
    wget https://loomcom.com/3b2/emulator/hd161_extras.img.gz && \
    gzip -d hd161_extras.img.gz && \
    wget https://loomcom.com/3b2/emulator/nvram.bin && \
\
    mkdir /machines/altair && \
    cd /machines/altair && \
    wget http://schorn.ch/cpm/zip/altsw.zip && \
    unzip altsw.zip && \
    rm altsw.zip && \
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
    mkdir /machines/b5500 && \
    cd /machines/b5500 && \
    # Taken from http://sky-visions.com/burroughs/index.shtml \
    echo "at cr cold.deck" > b5500 && \
    echo "at mt0 -f p7b B5500-XIII-SYSTEM-adc00257.bcd" >> b5500 && \ 
    echo "set mt0 locked" >> b5500 && \
    echo "at esu0 xiii.dsk" >> b5500 && \
    echo "at cp out.dck" >> b5500 && \
    echo "at lp out.lst" >> b5500 && \
    echo "at dtc 2000" >> b5500 && \
    echo "bo cr" >> b5500 && \
    wget http://sky-visions.com/burroughs/cold.deck && \
\
    mkdir /machines/cdc1700 && \
    cd /machines/cdc1700 && \
    # Taken from http://www.bitsavers.org/bits/CDC/1700_Cyber18/20100524/ \
    wget http://www.bitsavers.org/bits/CDC/1700_Cyber18/20100524/MSOS5_SL136.tap && \
\
    mkdir /machines/eclipse && \
    cd /machines/eclipse && \
    wget http://simh.trailing-edge.com/kits/zrdos75.zip
\
    apk del build-dependencies && \
    rm -rf /var/cache/apk/* 

ENV PATH /usr/src/simh/BIN:$PATH

EXPOSE 2323-2326

WORKDIR /machines

ENTRYPOINT ["busybox", "sh"]
