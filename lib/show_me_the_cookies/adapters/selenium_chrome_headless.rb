module ShowMeTheCookies
  # chromedriver adapter is the selenium adapter with minor changes
  class SeleniumChromeHeadless < ShowMeTheCookies::Selenium
    
    protected

    def on_the_page?
      super && @browser.current_url != 'data:,'
    end
  end
end
 