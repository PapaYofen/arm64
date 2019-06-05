# Dockerfile for arm64
Right now `Do Not support cross-build` arm64 docker image on x86 host system.

## seaweedfs
Run command below on arm64 host system against docker engine:
```shell
cd seaweedfs && sh build.sh
```

## nginx
- [Official docker image](https://hub.docker.com/r/arm64v8/nginx/) supports arm64
- Production version: arm64v8/nginx:1.15.12

## gcc-golang
Build image to support gcc 9 and golang 1.12.5 simultaneously.