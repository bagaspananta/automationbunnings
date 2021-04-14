def load_pages
  DesktopPage.new
end

def action

  case ENV['DEVICE'].to_s

    when "desktop"
      @action ||= DesktopAction.new
    else
      raise 'Unknown device action.'
  end
end

class DesktopAction
  include DesktopActions
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def method_missing(method, *args, &block)
    raise Cucumber::Pending.new("Desktop Action method missing for desktop test: #{method}")
  end
end

def bunnings_driver
  BunningsWebDriver.new
end
