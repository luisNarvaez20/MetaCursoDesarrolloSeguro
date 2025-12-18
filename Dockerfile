FROM eclipse-temurin:17-jdk
VOLUME /tmp
COPY target/*.jar app.jar

ENV PORT 5000

EXPOSE $PORT
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=${PORT}","-jar","/app.jar"]
