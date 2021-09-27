FROM openjdk:8-jre-alpine
ARG VERSION
WORKDIR /app
COPY target/springbootrestapiexample-$VERSION.java /app/springbootrestapiexample.java
ENTRYPOINT ["java", "-jar", "springbootrestapiexample.jar"]
