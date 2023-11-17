FROM amazoncorretto:17

# Refer to Maven build -> finalName
ARG JAR_FILE=target/Hello-World-0.0.1.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} Hello-World-0.0.1.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","Hello-World-0.0.1.jar"]