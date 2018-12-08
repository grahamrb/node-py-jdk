FROM node:8-stretch
MAINTAINER Graham Rivers-Brown <graham@extg.net>

RUN apt-get update && apt-get -y install unzip openjdk-8-jre-headless openjdk-8-jdk python-pip git build-essential python-dev
RUN /usr/sbin/update-java-alternatives -s java-1.8.0-openjdk-amd64
RUN pip install PyYAML awscli s3cmd python-magic --upgrade --user
ENV PATH "~/.local/bin:$PATH"
# note, if running as a different user then you need to run this: export PATH=~/.local/bin:$PATH

CMD [ "node" ]
