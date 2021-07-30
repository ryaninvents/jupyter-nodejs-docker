FROM dclong/jupyter

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && npm install -g n \
    && n lts
RUN npm install -g --unsafe-perm ijavascript yarn \
    && ijsinstall --install=global
RUN apt-get autoremove \
    && apt-get clean
ENTRYPOINT [ "/scripts/sys/init.sh" ]
VOLUME [ "/workdir" ]
VOLUME [ "/home_host" ]
EXPOSE 8888