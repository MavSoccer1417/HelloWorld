FROM ubuntu:latest
WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
COPY HelloWorld.class .

CMD ["java", "HelloWorld"]
