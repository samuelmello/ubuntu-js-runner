FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y default-jdk git libxss1 libxcursor-dev libpangocairo-1.0 libgtk-3-0
CMD ["/bin/bash", "-i"]
