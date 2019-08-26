require 'rubygems'
require 'watir'
require 'test/unit'

class Magento_GuestAddToCart < Test::Unit::TestCase 
  def test_GuestAddToCart 
    browser = Watir::Browser.new 
    browser.goto("http://demo.magentocommerce.com/electronics") 
    
    browser.goto("http://demo.magentocommerce.com/electronics/cellphones") 
    browser.link(:href, "http://demo.magentocommerce.com/samsung-mm-a900m-ace.html").click 
    browser.text_field(:id, "qty").set("3") 
    browser.button(:title, "Add to Cart").click 
    browser.button(:title, "Proceed to Checkout").click 
    browser.radio(:id, "login:guest").set 
    browser.div(:id, "checkout-step-login").button(:text, "Continue").click 
    browser.text_field(:id, "billing:firstname").set("John") 
    browser.text_field(:id, "billing:lastname").set("Doe") 
    browser.text_field(:id, "billing:company").set("My company name here") 
    browser.text_field(:id, "billing:email").set("johndoe@gmail.com") 
    browser.text_field(:id, "billing:street1").set("Sample street name1") 
    browser.text_field(:id, "billing:street2").set("Please ignore this order, developer test") 
    browser.select_list(:id, "billing:region_id").set("California") 
    browser.text_field(:id, "billing:city").set("Alamo") 
    browser.text_field(:id, "billing:postcode").set("94507") 
    browser.select_list(:id, "billing:country_id").set("United States") 
    browser.text_field(:id, "billing:telephone").set("0038531399222") 
    browser.div(:id, "checkout-step-billing").radio(:id, "billing:use_for_shipping_yes").set 
    browser.button(:title, "Continue").click 
    sleep 4 
    browser.radio(:id, "s_method_flatrate_flatrate").set 
    browser.div(:id, "checkout-step-shipping_method").button(:text, "Continue").click 
    sleep 4 
    browser.radio(:id, "p_method_checkmo").set 
    browser.div(:id, "checkout-step-payment").button(:text, "Continue").click	
    sleep 4 
    browser.div(:id, "checkout-step-review").button(:text, "Place Order").click #
    browser.close 
  end 
end