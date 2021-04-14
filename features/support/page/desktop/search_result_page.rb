module DesktopPages
    include Capybara::DSL
  
    class SearchResults < BunningsWebDriver
    
        def our_range_tab
          '//li[@class="responsive-search-tabs_list-item is-active "]//a[@datav3-track-text="Our Range"]'
        end

        def diy_advice
            '//li[@class="responsive-search-tabs_list-item is-active "]//a[@datav3-track-text="D.I.Y. Advice"]'
        end
        
        def services
            '//li[@class="responsive-search-tabs_list-item is-active "]//a[@datav3-track-text="Services"]'
        end
    end
  end