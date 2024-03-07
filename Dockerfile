FROM uatdockerdtr.alico.corp/infra/openjdk:8-jre-alpine
#FROM openjdk:8-jre-alpine
ARG JAR_FILE
ADD config-ws-0.0.1-SNAPSHOT-exec.jar config-ws-0.0.1-SNAPSHOT-exec.jar
ENTRYPOINT ["java", "-Xmx456M","-jar", "-Dspring.profiles.active=${env_name}", "config-ws-0.0.1-SNAPSHOT-exec.jar"]