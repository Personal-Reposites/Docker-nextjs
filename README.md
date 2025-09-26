#  Docker Steps Next js

## 1- Crear un archivo Dockerfile en la raíz del proyecto

```
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
```
### 2-  Ver Imagenes construidas Cualquier ruta corre .OPTIONAL :  

```
docker images
```

### 3- Reconstruir Imagen Docker
```
docker build -t hola-mundo-node-minuscula
```

```
-t : significa tag o le da un nombre a la imagen para poder usarla facil
```
### 4- Ejecutar El contenedor Actualizado
```
docker run --rm hola-mundo-node-minuscula
```
```
--rm : significa remove cuando el contendor termine de ejecutarse.
```

### 5 - Ver contendores en Ejecucion ..OPTIONAL

```
docker ps
```

```
docker ps -a
```

```
-a : significa ver todos los contenedores incluyendo los detenidos
```
