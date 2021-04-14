module DesktopPages
  include Capybara::DSL

  class Home < BunningsWebDriver
  
      def search_container
        '//input[@data-page="/search"]'
      end

      def search_container_button
        '//button[@datav3-track-text="search"]'
      end

      def drop_down_result_products text
        '//li[@class="ui-menu-item"]//a[@href="/search/products?q=panels"]'
      end

      def drop_down_result_diy text
        '//li[@class="ui-menu-item"]//a[@href="/search/diy?q=panels"]'
      end

      def drop_down_result_services text
        '//li[@class="ui-menu-item"]//a[@href="/search/services?q=panels"]'
      end
  end
end
  