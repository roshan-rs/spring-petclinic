FROM ubuntu
USER root
RUN apt-get update -y && apt-get install default-jre -y && apt-get install default-jdk -y
ADD target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar /opt
WORKDIR /opt
#RUN java -jar  spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar

