class BunningsWebDriver

  include Capybara::DSL

  def click_xpath(xpath)
    element = get_element(xpath)
    element.click
  end

  def navigate_to_url(url)
    visit(url)
  end

  def select_xpath(xpath, option)
    element = get_element(xpath)
    element.select(option)
  end

  def send_keys_xpath(xpath, args)
    element = get_element(xpath)
    element.send_keys args
  end

  def set_value_for_xpath(xpath, value)
    element = get_element(xpath)
    element.set(value)
  end

  def get_element(xpath)
    find(:xpath, xpath)
  end

end
