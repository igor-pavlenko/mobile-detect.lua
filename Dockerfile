FROM openresty/openresty:alpine
RUN apk add --no-cache --virtual .build-deps \
        perl \
        perl-dev \
        build-base \
        curl \
        gd-dev \
        libxslt-dev \
        linux-headers \
        make \
        readline-dev \
        zlib-dev \
        gcc \
        g++ \
        wget \
        unzip \
        outils-md5 \
        php5 \
        php5-json \
    && ln -s /usr/bin/php5 /usr/bin/php \
    && cpan App::cpanminus \
    && cpanm Test::Nginx
