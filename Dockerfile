FROM ruby:2.5.1-stretch

RUN set -x && \
  apt-get update && \
  apt-get install unzip && \
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
  dpkg -i google-chrome*.deb || apt update && apt-get install -f -y

RUN mkdir /noto
ADD https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip /noto
WORKDIR /noto
RUN unzip NotoSansCJKjp-hinted.zip && \
    mkdir -p /usr/share/fonts/noto && \
    cp *.otf /usr/share/fonts/noto && \
    chmod 644 -R /usr/share/fonts/noto/ && \
    /usr/bin/fc-cache -fv
WORKDIR /
RUN rm -rf /noto

RUN gem install selenium-webdriver
RUN gem install chromedriver-helper
