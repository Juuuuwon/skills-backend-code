FROM 822080800848.dkr.ecr.ap-northeast-2.amazonaws.com/user:latest

COPY . .

RUN chmod +x gradlew
RUN ./gradlew build

RUN apk add curl

ENTRYPOINT ["java", "-jar", "./build/libs/skills-backend-0.0.1-SNAPSHOT.jar"]
