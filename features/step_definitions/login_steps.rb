When(/^I am on Appimation home page/) do
  visit('/')
<<<<<<< HEAD
  #finds image for container with specified text
  all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
    puts el
  end
  #find Try now button, by it's ID
  find(:id, "start_button")
  #find Signup button, by it's ID
  find(:id, "signup-b")
  #find Contact Us section
  find(:id, "cta")
  #find Name field in Contact Us section using xpath
  find(:xpath, '//*[@id="name"]')
  #find Email field in Contact Us section using xpath
  find(:xpath, '//*[@id="email"]')
  #find Message field in Contact Us section using xpath
  find(:xpath, '//*[@id="contactus-message"]')
  #find Send button in Contact Us section using xpath
  find(:xpath, '//*[@id="contactus-button"]')
  #All feature sections in list using xpath
  #find(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section")
  
  #all(:xpath, "//div[contains(@class, 'features-row')]/descendant::h3[contains(text(), 'Chain requests with reusable data')]")
  all(:xpath, "//div[contains(@class, 'features-row')]/section").each do |el|
    puts el
  end  
end

Then(/^I click Try Now/) do
  
end
Then(/^I enter (.*) in SignUp email/) do
  
end

Then(/^I enter (.*) in SignUp passwords/) do
  
end

Then(/^I enter (.*) in SignUp project name/) do
  
end

Then(/^I cancel SignUp/) do
  
end