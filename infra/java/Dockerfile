FROM maven:3.8.5-openjdk-17 AS builder
ENV WORKSPACE=/tmp
ENV APP_DIR=../../../demo
WORKDIR ${WORKSPACE}
COPY ${APP_DIR}/src ${WORKSPACE}/src
COPY ${APP_DIR}/pom.xml ${WORKSPACE}
RUN mvn package

FROM openjdk:17-jdk-bullseye
ARG TZ=Asia/Tokyo
ENV TZ ${TZ}
ENV LANG C.UTF-8
ENV WORKSPACE=/usr/local/src
COPY --from=builder /tmp/target/app.jar ${WORKSPACE}/app.jar
EXPOSE 8080
