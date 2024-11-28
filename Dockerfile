FROM node:22 

# Arbeitsverzeicnins für Projekt Coden VS_Labo  in container erstellen
WORKDIR /app

# Abhängigkeiten installieren 
COPY package*.json ./
RUN npm install

# Anwendung kopieren 
COPY . .

# Port 8080 für docker öffnen 
EXPOSE 8080

# Anwendung starten
CMD ["node", "index.js"]