FROM ubuntu

MAINTAINER nikhil

WORKDIR /root

RUN mkdir -p /opt/tomcat \
    && apt update -y \
    && apt install default-jdk -y

ADD apache-tomcat-9.0.67.tar.gz /opt/tomcat/

CMD ["/opt/tomcat/apache-tomcat-9.0.67/bin/catalina.sh", "run"]

COPY ecomm-master /opt/tomcat/apache-tomcat-9.0.67/webapps/ROOT/

EXPOSE 8080


#CMD ["sleep", "1600"]
# && apt install wget -y && apt install tar -y
# RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.67/bin/apache-tomcat-9.0.67.tar.gz
