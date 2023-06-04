#Dockerfile-latest
FROM alpine:edge
ENV RUNPKGS "simh net-tools vde2 vde2-libs libpcap nano readline bash curl wget unzip"
COPY /machines/ /machines/
RUN apk --update --no-cache add $RUNPKGS && rm -rf /var/cache/apk/* && \
    rm -rf /var/cache/apk/* && \
    find /machines -name "*.sh" -exec chmod 755 {} \; 
    
#ENV PATH /usr/src/simh/BIN:$PATH

EXPOSE 2323-2326
WORKDIR /machines
ENTRYPOINT ["busybox", "sh"]
