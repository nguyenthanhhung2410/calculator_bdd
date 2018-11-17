# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through 
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs

Given /^I have the Calculator app opened$/ do
  launch_app
end

Given /^I have a clear screen$/ do
  main_page.clear_screen
end

When /^I input ([^"]*)$/ do |data|
  buttons = data.gsub(' ','').split('')
  main_page.click_button buttons
end

When /^I click the delete button$/ do
  main_page.click_button ['delete']
end

When /^I put the app to background for ([^"]*) seconds$/ do |time|
  @result_text = main_page.result_text
  $driver.background_app(time.to_i)
end

When /^I open advance calculation screen/ do
  main_page.navigate_to_advance_page
end

Then /^I should see the number ([^"]*) as correct result of input calculation on the screen$/ do |result|
  expect(main_page.result_text).to eq result
end

Then /^I should see the app status remained the same$/ do
  expect(main_page.result_text).to eq @result_text
end

Then /^I should be able to see the advance calculation screen$/ do
  expect(advance_page.active?).to be true
end