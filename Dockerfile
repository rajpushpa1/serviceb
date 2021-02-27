FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/service-b.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} service-b.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","service-b.jar"]