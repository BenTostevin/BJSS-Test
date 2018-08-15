require 'capybara/dsl'

class Dynamic_Loading
  include Capybara::DSL

  # Constants
  EXAMPLE_2_LINK = 'Example 2'
  START_BUTTON = 'Start'
  LOADING_TEXT = 'Loading...'
  HELLO_WORLD_TEXT = 'Hello World!'

  def click_example_two
    click_link(EXAMPLE_2_LINK)
    sleep 2
  end

  def click_start_button
    click_button(START_BUTTON)
  end

  def check_loading_bar_visible
    page.has_content?(LOADING_TEXT)
  end

  def check_hello_world
    page.has_content?(HELLO_WORLD_TEXT)
  end

end
