From jenkins/jenkins:lts-jdk21

USER root

RUN jenkins-plugin-cli --plugin file git:5.9.0

EXPOSE 8080 5000