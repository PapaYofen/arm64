FROM ubuntu:14.04

RUN apt-get update && \
	apt-get install -y wget && \
	apt-get clean

ENV GOVERSION 1.12.5
RUN	wget -P /tmp --quiet --no-check-certificate --continue https://dl.google.com/go/go${GOVERSION}.linux-amd64.tar.gz && \
	tar -C /usr/local -xzf /tmp/go${GOVERSION}.linux-amd64.tar.gz && \
	rm -rf /tmp/*

ADD cross_compile.tar.gz /root
RUn ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-ar /usr/bin/ar && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-c++ /usr/bin/c++ && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-cpp /usr/bin/cpp && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-g++ /usr/bin/g++ && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-gcc /usr/bin/gcc && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-gprof /usr/bin/gprof && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-ld /usr/bin/ld && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-nm /usr/bin/nm && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-objdump /usr/bin/objdump && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-readelf /usr/bin/readelf && \
	ln -s /root/cross_compile/install/bin/aarch64-linux-gnu-strings /usr/bin/strings

ENV GOPATH="/code/go"
ENV PATH="/usr/local/go/bin:${GOPATH}/bin:${PATH}"
ENV GOOS=linux
ENV CGO_ENABLED=1
ENV GOARCH=arm64