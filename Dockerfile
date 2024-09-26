FROM debian:bookworm-slim
ARG HUGO_VERSION="0.133.1"
RUN apt-get update && apt-get install -y wget git
RUN  wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
    && dpkg -i /tmp/hugo.deb