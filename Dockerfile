# Utilise une image de base Node.js
FROM node:18

# Crée un répertoire pour l'application
WORKDIR /usr/src/app

# Copie le package.json et package-lock.json (si disponible) dans le conteneur
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie tout le code source dans le conteneur
COPY . .

# Expose le port 3000
EXPOSE 3000

# Commande par défaut pour démarrer l'application
CMD ["npm", "start"]
