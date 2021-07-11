```
% cd ruby-selenium-headless-chrome

% wget https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip

% docker build . -t ruby-selenium-headless-chrome:ruby-3.0.2-buster-20210712
% ### docker build --no-cache . -t ruby-selenium-headless-chrome
% docker tag ruby-selenium-headless-chrome:ruby-3.0.2-buster-20210712 ruby-selenium-headless-chrome:latest

% docker run --rm -it -v `pwd`/data:/data ruby-selenium-headless-chrome ruby /data/sample/sample.rb

$ docker run --rm -it -v `pwd`/data:/data ruby-selenium-headless-chrome ruby -v
ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]

% docker run --rm ruby-selenium-headless-chrome google-chrome --version
Google Chrome 91.0.4472.114
```
