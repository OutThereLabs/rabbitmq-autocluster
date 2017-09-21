FROM rabbitmq:3.6-management

ENV AUTOCLUSTER_VERSION=0.8.0

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
    && wget -O /plugins/autocluster-${AUTOCLUSTER_VERSION}.ez https://github.com/rabbitmq/rabbitmq-autocluster/releases/download/${AUTOCLUSTER_VERSION}/autocluster-${AUTOCLUSTER_VERSION}.ez \
    && wget -O /plugins/rabbitmq_aws-${AUTOCLUSTER_VERSION}.ez https://github.com/rabbitmq/rabbitmq-autocluster/releases/download/${AUTOCLUSTER_VERSION}/rabbitmq_aws-${AUTOCLUSTER_VERSION}.ez \
    && apt-get purge -y --auto-remove ca-certificates wget

RUN rabbitmq-plugins enable --offline autocluster
