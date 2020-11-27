  
From alpine:3.7
ENV CATALINA_HOME /usr/local/tomcat/apache-tomcat-7.0.104
RUN apk update
RUN apk add openjdk8
RUN mkdir /usr/local/tomcat
EXPOSE 8080
ADD https://apache-mirror.rbc.ru/pub/apache/tomcat/tomcat-7/v7.0.104/bin/apache-tomcat-7.0.104.tar.gz /usr/local/tomcat/
WORKDIR /usr/local/tomcat/
RUN ls -la
RUN tar xvzf apache-tomcat-7.0.104.tar.gz
RUN rm -R apache-tomcat-7.0.104.tar.gz
WORKDIR $CATALINA_HOME/bin
RUN ls -la
RUN pwd
CMD ["/usr/local/tomcat/apache-tomcat-7.0.104/bin/catalina.sh", "run"]
