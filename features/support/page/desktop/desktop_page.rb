class DesktopPage < BunningsWebDriver
  def home
    DesktopPages::Home.new
  end

  def search_result
    DesktopPages::SearchResults.new
  end

end
