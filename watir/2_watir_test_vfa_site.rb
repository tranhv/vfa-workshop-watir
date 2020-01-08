require 'minitest/autorun'
require 'watir'
class GoogleHomePage < UnitTest::Unit::TestCase
  def test_there_should_be_text_Gmail
   
    browser = Watir::Browser.new
    browser.goto("https://vitalify.asia/")
    browser.screenshot.save '2_home.png'
    # @browser.driver.executeScript("window.scrollBy(0,200)")
    # browser.screenshot.save '2_home_2.png'
    assert(browser.text.include?("info@vitalify.asia"))
    assert(browser.text.include?("(028) 3932 6293"))
    assert(browser.text.include?("HI! WE ARE"))
    assert(browser.text.include?("VITALIFY ASIA!"))
    assert(browser.text.include?("224A-224B Dien Bien Phu Street, Ward 7, District 3, HCM city"))
    CSV.open("file.csv", "wb") do |csv|
      csv << ["animal", "count", "price"]
      csv << ["fox", "1", "$90.00"]
    end
  end
end