FROM debian:buster

# Installation d'Unbound
RUN apt-get update && apt-get install -y unbound

# Copie de la configuration d'Unbound
COPY unbound.conf /etc/unbound/unbound.conf

# Exécution du serveur Unbound
CMD ["unbound", "-d"]
