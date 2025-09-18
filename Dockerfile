# Usamos la imagen oficial de Node.js
FROM node:20

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos package.json y package-lock.json
COPY package*.json ./

# Instalamos dependencias
RUN npm install

# Copiamos todo el proyecto
COPY . .

# Exponemos el puerto que usa Next.js
EXPOSE 3000

# Comando para iniciar Next.js en producción
CMD ["npx", "next", "start"]
