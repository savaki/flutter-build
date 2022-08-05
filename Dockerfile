FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata vim unzip telnet git wget curl

RUN curl -L -o flutter.tgz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.0.5-stable.tar.xz && \
    tar -xf flutter.tgz -C /opt && \
    ln -s /opt/flutter/bin/flutter /usr/local/
    rm flutter.tgz

