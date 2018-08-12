require 'capybara/dsl'

class Challenging_DOM
  include Capybara::DSL


  def click_red_button
    find('.alert').click
    # find_element(:id, 'dropdown_7')
    sleep 2
  end

  def read_red_button
    find('.alert').text
  end

end
