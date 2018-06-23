Given(/^the (image|audio|video) submission bundle and prices:$/) do |_, table|
  # table is a table.hashes.keys # => [:size, :cost]
  # pending
end


When(/^I enter the order "([^"]*)"$/) do |arg|
  run_order(arg)
end

Then(/^I see the number of bundles is "([^"]*)" at cost "([^"]*)"$/) do |bundle_type_and_count, cost|
  expect(recent_lines).to include(" #{bundle_type_and_count} #{cost}")
end

Then(/^I see the total cost "([^"]*)" and count "([^"]*)" for "([^"]*)"$/) do |cost, count, code|
  expect(recent_lines).to include("#{count} #{code} #{cost}")
end