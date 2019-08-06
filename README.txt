wget https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip

cd ruby-selenium-headless-chrome

docker build . -t ruby-selenium-headless-chrome
# docker build --no-cache . -t ruby-selenium-headless-chrome

docker run --rm -it -v `pwd`/data:/data ruby-selenium-headless-chrome ruby /data/sample.rb

docker run --rm ruby-selenium-headless-chrome google-chrome --version
Google Chrome 76.0.3809.87
