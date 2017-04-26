When(/^I am on Appimation home page/) do
  visit('/')
  #finds image for container with specified text
  #all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
  #  puts el
  #end
  #find Try now button, by it's ID
  #find(:id, "start_button")
  #find Signup button, by it's ID
  #find(:id, "signup-b")
  #find Contact Us section
  #find(:id, "cta")
  #find Name field in Contact Us section using xpath
  #find(:xpath, '//*[@id="name"]')
  #find Email field in Contact Us section using xpath
  #find(:xpath, '//*[@id="email"]')
  #find Message field in Contact Us section using xpath
  #find(:xpath, '//*[@id="contactus-message"]')
  #find Send button in Contact Us section using xpath
  #find(:xpath, '//*[@id="contactus-button"]')
  #All feature sections in list using xpath
  #find(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section")
  
  #all(:xpath, "//div[contains(@class, 'features-row')]/descendant::h3[contains(text(), 'Chain requests with reusable data')]")
  #all(:xpath, "//div[contains(@class, 'features-row')]/section")

  find(:id, 'start_button').visible?
  find(:id, 'login-b').visible?
  find(:id, 'signup-b').visible?
end

Then(/^I click Try Now/) do
  find(:id, 'start_button').click
end

Then(/^I enter (.*) in SignUp email/) do |email|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "login"]').send_keys email
end

Then(/^I enter (.*) in SignUp passwords/) do |password|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]').send_keys password
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]').send_keys password
end

Then(/^I enter (.*) in SignUp project name/) do |name|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]').send_keys name
end

Then(/^I cancel SignUp/) do
  find(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]').click
end

Then(/^I click landing Login/) do
  find(:id, 'login-b').click
end

Then(/^I enter (.*) in Login email/) do |email|
  find(:xpath, '//div[@id = "login"]/descendant::h1[contains(text(), "Welcome Back!")]')
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]').send_keys email
end

Then(/^I enter (.*) in Login password/) do |password|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]').send_keys password
end

Then(/^I click Login/) do
  find(:xpath, '//div[@id = "login"]/descendant::button[@class = "button button-block innerButton"]').click
end

Then(/^I have successfully logged in/) do
  #find the email, that was used to login
  find(:xpath, '//div[@id = "userEmail"]/descendant::span[contains(text(), "auto_apimation@mailinator.com")]')
  #find the project name
  find(:xpath, '//div[@id = "dropdownMenu1"]/descendant::a[contains(text(), "Capybara-automation")]')
  #find that Test Data section exists
  find(:id, 'testDataTitle')
  #find that steps field exists
  find(:id, 'steps')
  #find that case field exists
  find(:id, 'cases')
  #find that set field exists
  find(:id, 'sets')
  #find logout button
  find(:id, 'logoutButton')
end