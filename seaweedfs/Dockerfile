FROM arm64v8/alpine:3.9

# volume server gprc port
EXPOSE 18080
# volume server http port
EXPOSE 8080
# filer server gprc port
EXPOSE 18888
# filer server http port
EXPOSE 8888
# master server shared gprc port
EXPOSE 19333
# master server shared http port
EXPOSE 9333
# s3 server http port
EXPOSE 8333

RUN mkdir -p /data/filerdb && \
	mkdir -p /data/master && \
	mkdir -p /data/volume

VOLUME /data

RUN mkdir -p /etc/seaweedfs
COPY filer.toml /etc/seaweedfs/filer.toml
COPY entrypoint.sh /entrypoint.sh
COPY weed /usr/bin/
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
