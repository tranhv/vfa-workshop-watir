require 'minitest/autorun'
require 'watir'
class GoogleHomePage <MiniTest::Unit::TestCase
  def test_there_should_be_text_Gmail
    browser = Watir::Browser.new
    browser.goto("https://vfaradio.vitalify.asia")

    browser.text_field(:name, "from").set("Meo Meo")
    browser.text_field(:name, "to").set("Gâu Gâu")
    browser.text_field(:name, "song").set("Señorita")
    browser.text_field(:name, "url").set("https://www.youtube.com/watch?v=3NcL3yUK4S0")
    browser.text_field(:name, "message").set("")
    browser.button(:id,"btnSubmit").click
  end
end