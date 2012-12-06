Given /^I am a guest$/ do
  @browser.get("http://www.d20ghouls.com")
  wait_until { @browser.title == "D20 Ghouls" }
end
