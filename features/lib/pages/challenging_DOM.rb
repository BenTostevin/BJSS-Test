require 'capybara/dsl'

class Challenging_DOM
  include Capybara::DSL

  # Constants
  RED_BUTTON_CLASS = '.alert'

  def click_red_button
    find(RED_BUTTON_CLASS).click
    sleep 2
  end

  def read_red_button
    find(RED_BUTTON_CLASS).text
  end

end
