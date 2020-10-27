FROM rabbitmq:alpine

LABEL maintainer="thinks <thinksvip@outlook.com>"

RUN rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_federation_management rabbitmq_stomp

EXPOSE 4369 5671 5672 15671 15672 25672