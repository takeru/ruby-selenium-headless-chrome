```
% cd ruby-selenium-headless-chrome

% wget https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip

% docker build . -t ruby-selenium-headless-chrome:ruby-2.5.1-stretch-20210712
% ### docker build --no-cache . -t ruby-selenium-headless-chrome

% docker run --rm -it -v `pwd`/data:/data ruby-selenium-headless-chrome ruby /data/sample/sample.rb

% docker run --rm ruby-selenium-headless-chrome google-chrome --version
Google Chrome 91.0.4472.114
```
