
Feature: Login
    As a user of SwagLabs i want to login

    Scenario: Happy Login
    Given i acess home page with the "standard_user" as user and "secret_sauce" as password
    When i click on login button
    Then i should see the "PRODUCTS" page
   
    Scenario Outline: Login with multiple erros
    Given i acess home page with <username> and <password>
    When i click on login button
    Then I should see <text>

    Examples:
    | username          | password       | text                                                                        |
    | "locked_out_user" | "secret_sauce" | "Epic sadface: Sorry, this user has been locked out."                       |
    | " "               | "secret_sauce" | "Epic sadface: Username and password do not match any user in this service" |
    | "standard_user"   | " "            | "Epic sadface: Username and password do not match any user in this service" |
    | "standard_user"   | "secret_sau"   | "Epic sadface: Username and password do not match any user in this service" |
    | "standard_user"   | "secret_sau"   | "Scenario Fail"                                                             |

   

    