#Dockerfile-latest

FROM rattydave/alpine-simh:core
    
COPY / /machines/
RUN  rm /machines/Dockerfile && find /machines -name "*.sh" -exec chmod 755 {} \; 
