FROM openjdk:17
ADD target/cicd-demo-0.0.1-SNAPSHOT.jar cicd-demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/cicd-demo-0.0.1-SNAPSHOT.jar"]