FROM adoptopenjdk:11-jre-hotspot

RUN mkdir -p /app && \
    chown -R daemon /app

USER daemon
WORKDIR /app

COPY ./target/simpleUserApp-0.0.1-SNAPSHOT.jar /app/simpleUserApp-0.0.1-SNAPSHOT.jar

CMD ["java", "-jar", "/app/simpleUserApp-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080