FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y nodejs npm default-jdk git
CMD ["/bin/bash", "-i"]
