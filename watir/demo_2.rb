require 'minitest/autorun'
require 'watir'
class GoogleHomePage <MiniTest::Unit::TestCase
  def test_there_should_be_text_Gmail
    browser = Watir::Browser.new
    browser.goto("https://vitalify.asia/")
    assert(browser.text.include?("info@vitalify.asia"))
    assert(browser.text.include?("(028) 3932 6293"))
    assert(browser.text.include?("HI! WE ARE"))
    assert(browser.text.include?("VITALIFY ASIA!"))
    assert(browser.text.include?("224A-224B Dien Bien Phu Street, Ward 7, District 3, HCM city"))
    browser.screenshot.save 'demo_1_home.png'
  end
end