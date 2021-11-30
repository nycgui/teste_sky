require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

require 'httparty'

World(PageObjects)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.sky.com.br'
  config.default_max_wait_time = 20
end