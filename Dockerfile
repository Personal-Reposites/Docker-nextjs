# Imagen base oficial de Node.js
FROM node:20

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos de dependencias
COPY package*.json ./

# Instalamos dependencias
RUN npm install

# Copiamos el resto del proyecto
COPY . .

# Construimos la app para producción
RUN npx next build

# Exponemos el puerto que usa Next.js
EXPOSE 3000

# Comando para iniciar la app en producción
CMD ["npx", "next", "start"]
