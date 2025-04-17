FROM openjdk:17-jdk-alpine

COPY . .

RUN chmod +x gradlew
RUN ./gradlew build

ENTRYPOINT ["java", "-jar", "./build/libs/skills-backend-0.0.1-SNAPSHOT.jar"]
