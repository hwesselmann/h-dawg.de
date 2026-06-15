FROM debian:stable-slim AS hugo-builder
ARG HUGO_VERSION=0.163.1
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends curl ca-certificates tar && \
    rm -rf /var/lib/apt/lists/* && \
    ARCH=$(dpkg --print-architecture) && \
    curl -fLo /tmp/hugo.tar.gz \
      "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${ARCH}.tar.gz" && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin hugo && \
    rm /tmp/hugo.tar.gz && \
    hugo version
WORKDIR /src
COPY . .
RUN hugo --minify

FROM nginx:stable-alpine
COPY --from=hugo-builder /src/public /usr/share/nginx/html
