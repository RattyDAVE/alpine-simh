#Dockerfile-latest

FROM rattydave/alpine-simh:core
    
COPY / /machines/
RUN  find /machines -name "*.sh" -exec chmod 755 {} \; 
