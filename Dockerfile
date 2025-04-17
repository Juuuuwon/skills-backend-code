FROM openjdk:17-jdk-alpine

COPY . .

RUN chmod +x gradlew
RUN ./gradlew build

RUN apk add curl

ENTRYPOINT ["java", "-jar", "./build/libs/skills-backend-0.0.1-SNAPSHOT.jar"]
