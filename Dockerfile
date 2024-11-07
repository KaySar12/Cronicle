FROM node:20.18-bullseye


WORKDIR /setup

COPY ./bin/install.js .
COPY ./docker-entrypoint.sh .
RUN chmod +x /setup/install.js && \
    chmod +x /setup/docker-entrypoint.sh && \
    node /setup/install.js && \
    cd /opt/cronicle

EXPOSE 3012
EXPOSE 3014

ENTRYPOINT ["/setup/docker-entrypoint.sh"]