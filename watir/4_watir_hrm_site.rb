require 'minitest/autorun'
require 'watir'

browser = Watir::Browser.new
browser.goto("http://hrm.vitalify.asia/user/login?redirectFrom=%2Fhome")
browser.screenshot.save '4_home.png'
browser.text_field(type: "email").set("tranhv@vitalify.asia") 
browser.text_field(type: "password").set("11111111") 
browser.screenshot.save '4_home_login.png' 
browser.button(type: "button").click 
browser.screenshot.save '4_home_after_login.png'
browser.buttons(type: "button").each_with_index do |b, index|
  #index: 4: checkin
  #index: 5: checkout
  #index: 6: goout
  #index: 7: comback
  if(index == 4)
    b.wait_while(&:obscured?).click
  end
end
sleep(2)
browser.screenshot.save '4_home_after_click.png' 
browser.close