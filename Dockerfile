FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs default-jre-headless git build-essential chromium-browser
RUN npm install -g puppeteer --unsafe-perm=true
RUN apt-get clean
CMD ["/bin/bash", "-i"]
