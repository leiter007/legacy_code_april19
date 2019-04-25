Given("I visit the {string} page") do |string|
    visit root_path
end
  
  When("I click {string} link") do |string|
    click_link string
  end
  
  When("I fill in {string} with {string}") do |field, string|
    fill_in field, with: string
  end
  
  When("I click {string}") do |string|
    click_button string
  end
  
  Then("I should see {string}") do |string|
    expect(page).to have_content string
  end

