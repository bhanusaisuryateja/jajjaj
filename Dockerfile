FROM tomcat:latest

LABEL maintainer="bhanu sai surya teja"
RUN mv webapps webappsbkp
RUN mv webapps.dist webapps

COPY ./target/pipeline.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]  
