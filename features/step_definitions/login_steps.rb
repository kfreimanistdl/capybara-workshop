When(/^I am on Appimation login page/) do
  visit('/')
  #finds image for container with specified text
  all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
    puts el
  end
  #find Try now button, by it's ID
  find(:id, "start_button")
  puts "Try now button visible"
  #find Signup button, by it's ID
  find(:id, "signup-b")
  puts "Signup button visible"
  #find Contact Us section
  find(:id, "cta")
  puts "Contact Us section is visible"
  #find Name field in Contact Us section using xpath
  find(:xpath, '//*[@id="name"]')
  #find Email field in Contact Us section using xpath
  find(:xpath, '//*[@id="email"]')
  #find Message field in Contact Us section using xpath
  find(:xpath, '//*[@id="contactus-message"]')
  #find Send button in Contact Us section using xpath
  find(:xpath, '//*[@id="contactus-button"]')
  #All feature sections in list using xpath
  find(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section")
end