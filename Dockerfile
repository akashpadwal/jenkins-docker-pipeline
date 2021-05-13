FROM openjdk as build
COPY /var/lib/jenkins/workspace/demopipelinetask/my-app/target/my-app-1.0-SNAPSHOT.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]