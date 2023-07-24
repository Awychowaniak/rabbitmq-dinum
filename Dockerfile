FROM rabbitmq:3.8-management-alpine

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
