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
  
  Then("I fill in the {string} field with {string}") do |user_email, email|
    page.fill_in "user_email", with: "email"
  end
  
  Then("I click {string} button") do |login|
    click_button(login)
  end
 
  Then("I should see {string}") do |content|
    expect(page).to have_content content
  end
