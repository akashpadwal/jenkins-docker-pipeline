FROM openjdk
ADD /var/lib/jenkins/workspace/new docker pipeline/target/my-app-1.0-SNAPSHOT-shaded.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]