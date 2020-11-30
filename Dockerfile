ARG RABBITMQ_VERSION=3.8.9
FROM rabbitmq:${RABBITMQ_VERSION}-management
LABEL maintainer="thinks <thinksvip@outlook.com>"

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*
    
ENV RABBITMQ_VERSION=3.8.9
    # 安装延迟消息队列插件
RUN wget -P /plugins https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/${RABBITMQ_VERSION}/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez &&\
    rabbitmq-plugins enable rabbitmq_delayed_message_exchange