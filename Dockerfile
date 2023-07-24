FROM rabbitmq:3-management

# Add a script to bootstrap when container start
COPY rabbitmq-start.sh /rabbitmq-start.sh
RUN chmod +x /rabbitmq-start.sh

CMD ["/rabbitmq-start.sh"]
