FROM tomcat:9.0
WORKDIR /usr/local/tomcat
COPY jb-hello-world-maven-0.2.0.jar ./webapps
RUN apt-get update
CMD [ "echo", "helloo world"]


