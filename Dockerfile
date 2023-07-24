# Récupère l'image de base pour RabbitMQ
FROM rabbitmq:3-management-alpine

# Ajoute le script de démarrage
ADD start.sh /start.sh
ADD rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

# Rend le script de démarrage exécutable
RUN chmod +x /start.sh

# Déclare que le conteneur écoutera sur le port 8080
EXPOSE 8080

# Définit le script de démarrage comme point d'entrée
ENTRYPOINT ["/start.sh"]
