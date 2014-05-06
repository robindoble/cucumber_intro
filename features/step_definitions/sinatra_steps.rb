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
  # page.should have_selector selector, content: text
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