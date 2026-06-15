FROM alpine:3 AS hugo-builder
ARG HUGO_VERSION=0.163.1
RUN apk add --no-cache curl tar && \
    GOARCH=$([ "$(uname -m)" = "aarch64" ] && echo "arm64" || echo "amd64") && \
    curl -fLo /tmp/hugo.tar.gz \
      "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${GOARCH}.tar.gz" && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin && \
    rm /tmp/hugo.tar.gz && \
    hugo version
WORKDIR /src
COPY . .
RUN hugo --minify

FROM nginx:stable-alpine
COPY --from=hugo-builder /src/public /usr/share/nginx/html
