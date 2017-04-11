FROM rabbitmq:management

MAINTAINER Patrick Tescher <patrick@outtherelabs.com>

ENV AUTOCLUSTER_VERSION 0.6.1

ADD https://github.com/aweber/rabbitmq-autocluster/releases/download/$AUTOCLUSTER_VERSION/autocluster-$AUTOCLUSTER_VERSION.tgz /tmp/autoclusterr-$AUTOCLUSTER_VERSION.tgz

RUN DIR=$(mktemp -d) && cd ${DIR} &&\
    tar zxvf /tmp/autoclusterr-$AUTOCLUSTER_VERSION.tgz &&\
    mv plugins/*.ez /plugins/ &&\
    rabbitmq-plugins --offline enable autocluster &&\
    rm -rf ${DIR}