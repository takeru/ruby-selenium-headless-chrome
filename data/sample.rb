require "chromedriver-helper"
require "selenium-webdriver"

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
# options.add_argument("--disable-extensions")
# options.add_argument("--disable-gpu")
# options.add_argument("--disable-dev-shm-usage")
options.add_argument("--no-sandbox")
# options.add_argument('--blink-settings=imagesEnabled=false')

driver = Selenium::WebDriver.for :chrome, options: options

driver.get "https://www.nict.go.jp/JST/JST5.html"
sleep 1
ts = Time.now.strftime("%Y%m%d_%H%M%S")
driver.save_screenshot("/data/jst_#{ts}.png")
driver.quit
