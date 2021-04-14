def verify_page_have_text text
  expect(page).to have_text text
end

def verify_page_has_xpath(xpath_selector)
  expect(page).to have_selector(:xpath, xpath_selector)
end

def verify_url_has_content(content)
  expect(page.current_url).to include(content)
end

def verify_url_has_no_content(content)
  expect(page.current_url).not_to include(content)
end

def verify_value(actual, expected)
  expect(actual).to eql(expected)
end
