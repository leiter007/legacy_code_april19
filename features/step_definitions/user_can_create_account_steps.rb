
Given("I visit the {string} page") do |string|
  visit root_path
end

Given("I click {string} link") do |string|
  click_link string
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string}") do |link|
  click_on link 
end