FROM alpine:3 AS hugo-builder
ARG HUGO_VERSION=0.163.1
RUN apk add --no-cache curl tar && \
    ARCH=$(uname -m) && \
    case "$ARCH" in \
      x86_64)  GOARCH="amd64" ;; \
      aarch64) GOARCH="arm64" ;; \
      *) echo "Unsupported arch: $ARCH" && exit 1 ;; \
    esac && \
    curl -fLo /tmp/hugo.tar.gz \
      "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${GOARCH}.tar.gz" && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin hugo && \
    rm /tmp/hugo.tar.gz
WORKDIR /src
COPY . .
RUN hugo --minify

FROM nginx:stable-alpine
COPY --from=hugo-builder /src/public /usr/share/nginx/html
