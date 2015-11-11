FROM wernight/phantomjs
MAINTAINER Pavel Popov <schmooser@gmail.com>

USER root

RUN apt-get update \
    && apt-get install -y \
        curl \
        vim \
        python \
    && mkdir /tmp/casperjs \
    && curl -L https://github.com/n1k0/casperjs/archive/master.tar.gz | tar -xzC /tmp/casperjs --strip-components=1 \
    && ln -s /tmp/casperjs/bin/casperjs /usr/local/bin/casperjs

EXPOSE 8910

CMD ["/usr/local/bin/casperjs"]
