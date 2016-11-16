FROM java:8
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
WORKDIR /helloworld
RUN mkdir bin
COPY HelloWorld.java /helloworld/src/
RUN javac -d bin src/HelloWorld.java
ENV FOO bar
ENV CONNECTION ${SSH_CONNECTION}
EXPOSE 80 8080

