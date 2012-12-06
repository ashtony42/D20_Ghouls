require 'pry'

Before do |scenario|
  @scenario = scenario
  @browser = get_browser if @browser == nil
end

After do
  if ENV['DEBUG'] == 'true' && @scenario.failed?
    binding.pry
  end
  @browser.quit
end

at_exit do
  @browser.quit
end


def get_browser
  if @browser == nil
    target_browser = ENV['BROWSER'].to_sym
    @browser = Watir::Browser.new(target_browser) if ENV['DRIVER'] == 'WATIR'
    @browser = Selenium::WebDriver.for(target_browser) if ENV['DRIVER'] == 'SELENIUM'
  end
  @browser
end

