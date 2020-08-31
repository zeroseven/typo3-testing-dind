FROM docker:git

RUN apk add bash && apk add curl php py-pip && apk add python3-dev libffi-dev openssl-dev gcc libc-dev \
    make git curl yaml yaml-dev g++ make autoconf nodejs npm openssh-client \
    php7 php7-json php7-mbstring php7-openssl php7-phar php7-pear php7-dev php7-pdo \
    php7-dom php7-tokenizer php7-session php7-xmlwriter php7-simplexml && \
    pip install docker-compose && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
