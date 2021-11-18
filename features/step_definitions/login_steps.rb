
Given('i acess home page with the {string} as user and {string} as password') do |username, password|
   @login_page.go
   @login_page.login_info(username, password)
end

When('i click on login button') do
   @login_page.click_login
end

Then('i should see the {string} page') do |page_tittle|
   expect(@products_page.products_title).to have_content page_tittle
 end

Então('devo ver a mensagem {string}') do |page_tittle|
   expect(@products_page.sucess_seats).to have_content page_tittle
end

Given('i acess home page with {string} and {string}') do |username, password|
   @login_page.go
   @login_page.login_info(username, password)
 end
 
 Then('I should see {string}') do |message|
   expect(@login_page.message_error).to have_content message
 end
