require 'cucumber'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'capybara/rspec'
require 'pry'
require 'pry-nav'
require 'rspec'

COMMON_TEST_DATA = YAML::load_file(File.join(File.dirname(__FILE__), 'config', 'common.yml'))
ENV_TEST_DATA = YAML::load_file(File.join(File.dirname(__FILE__), 'config', "#{ENV['ENV']}.yml"))


puts "Environment data for this run '#{ENV['ENV']}'"

DEFAULT_MAX_WAIT_TIME = 10

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|

  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 400

  chrome_desktop_args = %W(--window-size=1280,786 --no-sandbox, --disable-gpu --disable-web-security)

  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
      "chromeOptions" => {
        "args" => chrome_desktop_args
      }
    )
    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps, http_client: client )
end