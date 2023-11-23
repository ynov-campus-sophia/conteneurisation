# Utilisez une image de base Debian
FROM debian:latest

# Installez Node.js et npm
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# Copiez le script Node.js dans le conteneur
COPY script.js /app/

# Définissez le répertoire de travail
WORKDIR /app

# Exécutez votre script Node.js
CMD [ "node", "script.js" ]
