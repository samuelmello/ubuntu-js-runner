FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs default-jre-headless git libxss1 libxcursor-dev libpangocairo-1.0 libgtk-3-0 libx11-xcb1 ruby ruby-dev build-essential libz-dev
RUN gem install gitlab_kramdown
RUN apt-get clean
CMD ["/bin/bash", "-i"]
