require 'selenium-webdriver'

class Login

  @chromedriver
  def initialize(driver)
    @chromedriver=driver
  end

  def enterUsername(username)
    @chromedriver.find_element(:id,"email").send_keys(username)
  end

  def enterPassword(password)
    @chromedriver.find_element(:id,"pass").send_keys(password)
  end

  def clickSignin
    @chromedriver.find_element(:id,"u_0_r").click
  end

end
