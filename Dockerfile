FROM debian:wheezy
RUN apt-get update -y && \
apt-get install -y wget unzip curl git mercurial openssh-server zsh openjdk-7-jdk && \
cd /opt && wget http://maven.scm-manager.org/nexus/content/repositories/releases/sonia/scm/scm-server/1.40/scm-server-1.40-app.zip && \
unzip scm-server-1.40-app.zip
ADD start.sh /start.sh
EXPOSE 8080
EXPOSE 22
CMD ["/start.sh"]