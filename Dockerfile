FROM openjdk:11.0.3-jre-slim-stretch
VOLUME /tmp
ADD target/spring-shopizer-*.jar /shopizer.jar
EXPOSE 8080
RUN bash -c 'touch /shopizer.jar'
ENTRYPOINT ["java","-jar", "/shopizer.jar"]
