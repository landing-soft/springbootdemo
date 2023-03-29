FROM eclipse-temurin:17

WORKDIR /app

COPY ./target/springbootdemo-0.0.1-SNAPSHOT.jar /app

EXPOSE 8080

CMD ["java", "-jar", "springbootdemo-0.0.1-SNAPSHOT.jar"]