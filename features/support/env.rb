require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
  
  Capybara.configure do |config|
    config.default_driver = :site_prism
    config.default_max_wait_time = 10
    config.app_host = 'https://casasbahia.com.br/'
  end
  
  def chrome_options
    options = {
      'goog:chromeOptions' => {
        'args' => %w[disable-infobars disable-gpu privileged ignore-certificate-errors]
      }
    }
    options['goog:chromeOptions']['mobileEmulation'] = {
      'userAgent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
    }
  end