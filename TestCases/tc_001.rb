require 'test/unit'
require 'selenium-webdriver'
require '../Base/base'
require '../Pages/login'
require '../Assertions/assert'

class TC_001 < TestAutomationBase

  def test_TestCase1

    login = Login.new @@driver
    validation=Assert.new
    res=validation.validateURL@@driver,"https://www.facebook.com/"
    assert_true(res,"[Error ] Login Page URL is not matching")
    login.enterUsername"Hello"
    login.enterPassword "Abcd"
    login.clickSignin

  end

end