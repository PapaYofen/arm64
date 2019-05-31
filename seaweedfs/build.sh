#!/usr/bin/env bash

donwload() {
	wget -P . https://github.com/chrislusf/seaweedfs/releases/latest
	wget -P . https://github.com/$(egrep -o 'chrislusf/seaweedfs/releases/download/.*/linux_arm64.tar.gz' latest)
	tar -C . -xzvf linux_arm64.tar.gz
}

clean() {
	rm -f linux_arm64.tar.gz* weed* latest*
}

build() {
	docker build -t arm64/seaweedfs .
}

main() {
	clean
	donwload
	build
	clean
}

main