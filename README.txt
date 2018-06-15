
cd ruby-selenium-headless-chrome

docker build . -t ruby-selenium-headless-chrome

docker run -it -v `pwd`/data:/data ruby-selenium-headless-chrome ruby /data/sample.rb
