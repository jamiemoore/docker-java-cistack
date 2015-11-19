FROM centos:6

#install pre-requisites
RUN yum install -y java-1.8.0-openjdk tar git

#Java Envs
ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/

ENV MAVEN_VERSION 3.3.3

RUN curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven


#What is this?
#VOLUME /root/.m2

RUN mkdir /src
WORKDIR /src
VOLUME /src

CMD ["/bin/bash"]
