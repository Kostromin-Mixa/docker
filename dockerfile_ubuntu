FROM ubuntu:latest
LABEL ver="2"
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y git \
    wget \
    unzip \
    sudo \
    tzdata \
    locales\
    openjdk-8-jdk

ENV JENKINS_HOME=/var/lib/jenkins
RUN mkdir $JENKINS_HOME && chmod 777 $JENKINS_HOME
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war -nv

EXPOSE 8080/tcp
CMD java -jar jenkins.war