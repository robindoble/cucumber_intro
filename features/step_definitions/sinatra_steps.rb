Given /^I am on the home page$/ do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
	puts "-----" * 20
	puts text
	puts "-----" * 20
  page.should have_content text
end

Then(/^I should find the text "(.*?)" in the selector "(.*?)"$/) do |text, selector|
  within(selector) do
  	page.should have_content text
  end
end

Then(/^I should see "(.*?)" in a link$/) do |text|
page.should have_link text
end

Given(/^I am on "(.*?)"$/) do |text|
  visit text
end


When(/^I fill in "(.*?)" with "(.*?)"$/) do |name, value|
  fill_in name, with: value
  puts name
  puts value
end

When(/^I click "(.*?)"$/) do |button|
  puts button
  find_button(button).click
end