# Utilise une image Node officielle
FROM node:18

# Crée un dossier pour l’application dans le conteneur
WORKDIR /usr/src/app

# Copie les fichiers package.json et package-lock.json
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie tout le reste du projet
COPY . .

# Expose le port utilisé par l’application
EXPOSE 3000

# Démarre l’application
CMD ["npm", "start"]
