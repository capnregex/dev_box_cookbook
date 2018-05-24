
describe 'Capybara Webkit' do 
  # require 'rubygems'
  require 'capybara'
  require 'capybara/dsl'

  Capybara.run_server = false
  Capybara.current_driver = :webkit
  Capybara.javascript_driver = :webkit
  Capybara.app_host = 'http://www.google.com'

  include Capybara::DSL

  it "should be able to browse" do
    visit('/')
  end
end
