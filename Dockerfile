FROM ruby:3.0.4-alpine AS jekyll-builder
WORKDIR /app

RUN apk update && apk --update add ruby ruby-irb nodejs ruby-json ruby-rake \
   ruby-bigdecimal ruby-io-console libstdc++ tzdata  \
   libffi-dev libxml2-dev libxslt-dev

RUN apk add --virtual build-deps git build-base ruby-dev \
   libc-dev linux-headers && \
   gem install bundler --no-ri --no-rdoc && \
   bundle config build.nokogiri --use-system-libraries

COPY Gemfile* /app/
RUN bundle install --clean --without development test
COPY . /app
RUN bundle exec jekyll build -d ./build --verbose

FROM nginx:alpine
COPY --from=jekyll-builder /app/build /usr/share/nginx/html