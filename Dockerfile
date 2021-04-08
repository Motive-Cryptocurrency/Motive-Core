# Nxt docker image
#
# to use:
#
# 1. install docker, see docker.com
# 2. clone the git repo including this Dockerfile
# 3. build the container with ```docker build -t nxt .```
# 4. run the created nxt container with ```docker run -d -p 127.0.0.1:37876:7876 -p 37874:7874 nxt```
# 5. inspect with docker logs (image hash, find out with docker ps, or assign a name)

FROM phusion/baseimage:0.9.21
# start off with standard ubuntu images

# Set local and enable UTF-8
ENV LANG C.UTF-8
ENV LANGUAGE C
ENV LC_ALL C.UTF-8

#java8
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN apt-get install -y wget unzip
RUN wget https://d3pxv6yz143wms.cloudfront.net/8.212.04.2/java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb && \
    apt-get update &&  apt-get install java-common && apt-get install -y --no-install-recommends apt-utils && \
    dpkg --install java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb

# run and compile nxt
RUN mkdir /nxt
ADD . /nxt

# set nxt to listen on all interfaces
RUN echo 'nxt.allowedBotHosts=*' >> /nxt/conf/nxt.properties
RUN echo 'nxt.apiServerHost=0.0.0.0' >> /nxt/conf/nxt.properties
RUN cd /nxt; chmod +x /docker_start.sh

RUN cd /nxt; ./compile.sh
# both Nxt ports get exposed
EXPOSE 37874 37876
CMD ["/docker_start.sh"]
