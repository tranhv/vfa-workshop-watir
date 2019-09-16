require 'minitest/autorun'
require 'watir'
class GoogleHomePage <MiniTest::Unit::TestCase
  def test_there_should_be_text_Gmail
    browser = Watir::Browser.new
    browser.goto("https://vitalify.asia/contact")
    assert(browser.text.include?("info@vitalify.asia"))
    assert(browser.text.include?("(028) 3932 6293"))
    assert(browser.text.include?("224A-224B Dien Bien Phu Street, Ward 7, District 3, HCM city"))
    browser.screenshot.save 'demo_2_contact.png'

    #Case1
    browser.text_field(:name, "name").set("Meo")
    browser.screenshot.save '1.png'
    browser.text_field(:name, "email").set("meomeo@gmail.com")
    browser.screenshot.save '2.png'
    browser.text_field(:name, "company").set("Vitalify Asia")
    browser.screenshot.save '3.png'
    browser.select_list(:name, "mention").select("About AI development")
    browser.screenshot.save '4.png'
    browser.textarea(:name,"message").set("Meo meo meo")
    browser.screenshot.save '5.png'
    browser.button(:type,"submit").click
    browser.screenshot.save '6.png'
  end
end