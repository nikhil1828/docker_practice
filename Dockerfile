FROM ubuntu

RUN mkdir -p /opt/tomcat
RUN apt update -y && apt install default-jdk -y
ADD apache-tomcat-9.0.67.tar.gz /opt/tomcat/

COPY ecomm-master /opt/tomcat/apache-tomcat-9.0.67/webapps/ROOT/
#ADD apache-tomcat-9.0.67.tar.gz /opt/tomcat/

EXPOSE 8080

CMD ["/opt/tomcat/apache-tomcat-9.0.67/bin/catalina.sh", "run"]




#CMD ["sleep", "1600"]
# && apt install wget -y && apt install tar -y
# RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.67/bin/apache-tomcat-9.0.67.tar.gz
