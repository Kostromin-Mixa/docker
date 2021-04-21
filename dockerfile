FROM amazoncorretto:latest
RUN yum -y install wget
RUN wget https://get.jenkins.io/war-stable/2.277.2/jenkins.war
CMD java -jar jenkins.war
EXPOSE 8080/tcp