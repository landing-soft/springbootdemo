FROM maven:latest AS maven

WORKDIR /usr/src/app
COPY . /usr/src/app
# Compile and package the application to an executable JAR
RUN mvn package

# For Java 11,
FROM eclipse-temurin:17

ARG JAR_FILE=springbootdemo-0.0.1-SNAPSHOT.jar

WORKDIR /opt/app

# Copy the spring-boot-api-tutorial.jar from the maven stage to the /opt/app directory of the current stage.
COPY --from=maven /usr/src/app/target/${JAR_FILE} /opt/app/

EXPOSE 8080

ENTRYPOINT ["java","-jar","springbootdemo-0.0.1-SNAPSHOT.jar"]

#
#
#FROM eclipse-temurin:17
#
#WORKDIR /app
#
#COPY ./target/springbootdemo-0.0.1-SNAPSHOT.jar /app
#
#EXPOSE 8080
#
#CMD ["java", "-jar", "springbootdemo-0.0.1-SNAPSHOT.jar"]
