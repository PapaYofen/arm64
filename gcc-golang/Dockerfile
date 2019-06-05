FROM arm64v8/gcc:9

ENV GOVERSION 1.12.5

RUN	wget -P /tmp --quiet --no-check-certificate --continue --show-progress https://dl.google.com/go/go${GOVERSION}.linux-arm64.tar.gz && \
	tar -C /usr/local -xzf /tmp/go${GOVERSION}.linux-arm64.tar.gz && \
	rm -rf /tmp/*

ENV GOPATH="/root/go"
ENV PATH="/usr/local/go/bin:/root/go/bin:${PATH}"