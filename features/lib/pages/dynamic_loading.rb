require 'capybara/dsl'

class Dynamic_Loading
  include Capybara::DSL

  def click_example_two
    click_link('Example 2')
    sleep 2
  end

  def click_start_button
    click_button('Start')
  end

  def check_loading_bar_visible
    page.has_content?('Loading...')
  end

  def check_hello_world
    page.has_content?('Hello World!')
  end

end
