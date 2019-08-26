require 'minitest/autorun'
require 'watir'
class GoogleHomePage <MiniTest::Unit::TestCase
  def test_there_should_be_text_Gmail
    browser = Watir::Browser.new
    browser.goto("https://vitalify.asia/")
    sleep 2
    browser.screenshot.save '2_home.png'
    @browser.driver.executeScript("window.scrollBy(0,200)")
    browser.screenshot.save '2_home_2.png'
    assert(browser.text.include?("info@vitalify.asia"))
    assert(browser.text.include?("(028) 3932 6293"))
    assert(browser.text.include?("HI! WE ARE VITALIFY ASIA!"))
    assert(browser.text.include?("224A-224B Dien Bien Phu Street, Ward 7, District 3, HCM city"))
  end
end