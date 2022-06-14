FROM tomcat:latest

LABEL maintainer="bhanu sai surya teja"

COPY ./target/pipeline.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
