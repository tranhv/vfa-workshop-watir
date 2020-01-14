require 'minitest/autorun'
require 'watir'

browser = Watir::Browser.new
users = [
  {"user" => 'tranhv@vitalify.asia', "password" => '11111111'},
  {"user" => 'nhintt@vitalify.asia', "password" => '123456'}
]
users.each_with_index do |user, index|
  browser.goto("http://hrm.vitalify.asia/user/login?redirectFrom=%2Fhome")
  browser.text_field(type: "email").set(user["user"]) 
  browser.text_field(type: "password").set(user["password"]) 
  browser.button(type: "button").click 
  sleep(2)
  browser.buttons({type: "button"}).each_with_index do |b, index|
    #index: 4: checkin
    #index: 5: checkout
    #index: 6: goout
    #index: 7: comback
    #puts "ddd"
    #puts b.class_name
    if(index == 4 && !(b.class_name.include? "disabled"))
      begin
        b.click
        puts 'Checkout done:' + user['user'];
      rescue  
      end
    end
  end
  puts 'Checkout already for:' + user['user'];
  # browser.screenshot.save '4_home_after_click.png' 
end
browser.close