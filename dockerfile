FROM tomcat:9.0
WORKDIR /usr/local/tomcat
COPY ./*jar ./webapps
RUN apt-get update
CMD [ "echo", "helloo world"]


