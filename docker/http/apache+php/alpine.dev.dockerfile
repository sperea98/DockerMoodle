FROM alpine:latest
RUN apk update && apk upgrade && \
    apk --no-cache add apache2 php82 php82-apache2 php82-common \
    php82-curl php82-ctype php82-dom php82-gd php82-iconv php82-intl \
    php82-mbstring php82-pcre php82-simplexml php82-xml php82-zip \
    php82-openssl php82-soap php82-sodium php82-tokenizer





