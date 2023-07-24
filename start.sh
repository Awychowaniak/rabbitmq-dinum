#!/bin/sh

# Create the RabbitMQ user and vhost
rabbitmqctl add_user ${RABBITMQ_DEFAULT_USER} ${RABBITMQ_DEFAULT_PASS}
rabbitmqctl add_vhost ${RABBITMQ_DEFAULT_VHOST}
rabbitmqctl set_permissions -p ${RABBITMQ_DEFAULT_VHOST} ${RABBITMQ_DEFAULT_USER} ".*" ".*" ".*"

# Start the RabbitMQ server
rabbitmq-server
