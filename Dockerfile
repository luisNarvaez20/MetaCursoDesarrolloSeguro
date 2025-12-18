# Usar una versión de OpenJDK disponible
FROM openjdk:17-alpine

# Crear volumen temporal
VOLUME /tmp

# Copiar el jar construido al contenedor
COPY target/*.jar app.jar

# Configurar puerto
ENV PORT 5000
EXPOSE $PORT

# Configurar entrypoint
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=${PORT}","-jar","/app.jar"]
