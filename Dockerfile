FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 9090

CMD ["sh", "-c", "java -jar app.jar && sleep 3600"]
