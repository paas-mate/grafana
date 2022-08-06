FROM ttbb/base

WORKDIR /opt/sh

ARG version=9.0.6
ARG TARGETARCH

RUN wget https://dl.grafana.com/oss/release/grafana-$version.linux-$TARGETARCH.tar.gz && \
mkdir grafana && \
tar -xf grafana-$version.linux-$TARGETARCH.tar.gz -C /opt/sh/grafana --strip-components 1 && \
rm -rf grafana-$version.linux-$TARGETARCH.tar.gz

ENV GRAFANA_HOME /opt/sh/grafana

WORKDIR /opt/sh/grafana
