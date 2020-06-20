FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/Project1-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8200
ENV JAVA OPTS=""
RUN sh -c "touch Project1-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "Project1-0.0.1-SNAPSHOT.jar" ]
