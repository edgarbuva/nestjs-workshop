# Usa una imagen base de Node.js
FROM node:18

# Crea y establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia el package.json y el package-lock.json
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install --force

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 5001

#Start the server
CMD [ "npm", "run", "start:dev" ]
