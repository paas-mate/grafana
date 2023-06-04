FROM shoothzj/base:python

WORKDIR /opt

ARG version=10.0.0-preview
ARG TARGETARCH

RUN wget https://dl.grafana.com/oss/release/grafana-$version.linux-$TARGETARCH.tar.gz && \
mkdir grafana && \
tar -xf grafana-$version.linux-$TARGETARCH.tar.gz -C /opt/grafana --strip-components 1 && \
rm -rf grafana-$version.linux-$TARGETARCH.tar.gz

ENV GRAFANA_HOME /opt/grafana

WORKDIR /opt/grafana
