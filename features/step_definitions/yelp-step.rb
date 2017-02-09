Given(/^a user goes to Yelp$/) do    
  visit "https://www.yelp.com"   
end

When(/^Search for (.*?)$/) do |searchTerm|
  fill_in 'dropperText_Mast', :with => 'Dallas, TX'    
  fill_in 'find_desc', :with => searchTerm
  click_button('submit')
end

Then(/^See the List of (.*?) Restaurants$/) do |searchTerm|  
 expect(page).to have_content(searchTerm)
 expect(page).to have_no_content('No Results')
end

Then(/^See No Results found error message$/) do
 expect(page).to have_content('No Results')
end
