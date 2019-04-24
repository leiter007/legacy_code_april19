Given("the following user exists") do |table|
    table.hashes.each do |user|
        User.create!(user)
    end    
  end
  
  When("I visit the landing page") do
    visit root_path
  end
  
  Then("I click on the {string} link") do |login_link|
    click_link(login_link)
  end
  
  Then("I fill in the {string} field with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("i fill in the {string} field with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
