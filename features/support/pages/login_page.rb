class LoginPage
    include Capybara::DSL

    def go
        visit "/"
    end

    def login_info(username, password)
        find("#user-name").set username
        find("#password").set password
    end

    def click_login
        click_button "Login"
    end
    
    def message_error
        find(:xpath,"//h3[@data-test='error']").text
    end

end 