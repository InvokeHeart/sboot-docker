FROM centos:centos7.9.2009
MAINTAINER authabc@163.com
RUN mkdir /usr/local/java
ADD ./jdk-11.0.15.1_linux-x64_bin.tar.gz /usr/local/java
ENV JAVA_HOME /usr/local/java/jdk-11.0.15.1
ENV PATH $JAVA_HOME/bin:$PATH
COPY ./target/sboot-docker-1.0-SNAPSHOT.jar /sb.jar
CMD ["java","-jar","/sb.jar"]


