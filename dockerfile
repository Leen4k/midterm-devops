FROM openjdk:17.0.2-jdk
RUN mkdir /home/gradle/buildWorkspace
COPY . /home/gradle/buildWorkspace

WORKDIR /home/gradle/buildWorkspace
RUN ls /home/gradle/buildWorkspace
RUN gradle build --no-daemon
RUN ls /home/gradle/buildWorkspace/app/build/distributions/
RUN tar -xvf /home/gradle/buildWorkspace/app/build/distributions/app.tar
EXPOSE 9000