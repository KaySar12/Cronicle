FROM node:20.18-bullseye
RUN apt-get update && apt-get upgrade -y && apt-get install -y dnsutils bsdmainutils nano curl git mercurial make binutils bison gcc build-essential

WORKDIR /setup

COPY ./bin/install.js .
COPY ./docker-entrypoint.sh .
COPY ./install_gvm.sh .
COPY ./gvm-installer .
RUN chmod +x /setup/install.js && \
    chmod +x /setup/install_gvm.sh && \
    chmod +x /setup/gvm-installer && \
    chmod +x /setup/docker-entrypoint.sh && \
    ./install_gvm.sh && \
    node /setup/install.js && \
    cd /opt/cronicle
RUN npm install couchbase@2.6.12
EXPOSE 3012
EXPOSE 3014

ENTRYPOINT ["/setup/docker-entrypoint.sh"]