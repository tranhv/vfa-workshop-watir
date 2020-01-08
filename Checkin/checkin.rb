require 'minitest/autorun'
require 'watir'
class GoogleHomePage <MiniTest::Unit::TestCase
  def test_there_should_be_text_Gmail
    browser = Watir::Browser.new :safari
    browser.goto("http://hrm.vitalify.asia/user/login")
    browser.text_field(type: "email").set("bichdt@vitalify.asia")
    browser.text_field(type: "password").set("123456")
    browser.button(type:"button").click
    browser.button(aria-label:"CHECK_IN").click
  end
end