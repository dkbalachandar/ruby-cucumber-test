require 'capybara/cucumber'
 
require 'colorize'

require 'rspec'

Capybara.default_driver = :chrome 
Capybara.register_driver :chrome do |app|
   Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
