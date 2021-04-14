module DesktopActions
  include Capybara::DSL
  def navigate_to_desktop_site
    url = COMMON_TEST_DATA['environment'][ENV['ENV']]['url']
    puts "url for this test #{url}"
    bunnings_driver.navigate_to_url(url)
  end
end
