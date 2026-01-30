From jenkins/jenkins:lts-jdk21

ENV JAVA_OPTS= -Djenkins.install.runSetupWizard=false

USER root

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY install-plugins.sh /usr/local/bin/install-plugins.sh

RUN chmod +x /usr/local/bin/install-plugins.sh
RUN /usr/local/bin/install-plugins.sh /usr/share/jenkins/ref/plugins.txt

RUN /usr/local/bin/install-plugins.sh

RUN jenkins-plugin-cli --plugin file git:5.9.0

EXPOSE 8080 5000