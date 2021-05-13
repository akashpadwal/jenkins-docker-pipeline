FROM openjdk:11-jre-slim
ADD  /var/lib/jenkins/workspace/demopipelinetask/my-app/target/my-app-1.0-SNAPSHOT.jar /home/app/src/my-app-1.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/app/src/my-app-1.0-SNAPSHOT.jar"]