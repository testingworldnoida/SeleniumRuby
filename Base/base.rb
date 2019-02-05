require 'selenium-webdriver'
require 'yaml'
require 'test/unit'


class TestAutomationBase < Test::Unit::TestCase

  def setup
    Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedriver.exe"
    @@driver = Selenium::WebDriver.for :chrome
    config=YAML.load_file '../Config/config.yml'
    @@driver.get(config['applicationURL'])

  end

  def teardown
    @@driver.quit
  end

end