FROM ubuntu:16.04

LABEL maintainer="miljeveco@gmail.com"

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y clean
RUN apt-get install -f
RUN apt-get install -y wget
RUN apt-get install -y openjdk-8-jdk
RUN mkdir /opt/tomcat

VOLUME /opt/tomcat
WORKDIR /opt/tomcat

ADD apache-tomcat-9.0.27.tar.gz /opt/tomcat/
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
ENV PATH=/opt/tomcat/apache-tomcat-9.0.27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE 8080

ENTRYPOINT ["catalina.sh", "run"]
