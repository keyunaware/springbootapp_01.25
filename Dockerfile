FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=JAR_FILE_MUST_BE_SPECIFIED_AS_BUILD_ARG
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]