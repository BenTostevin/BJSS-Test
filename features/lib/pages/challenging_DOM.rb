require 'capybara/dsl'

class Challenging_DOM
  include Capybara::DSL


  def click_red_button
    find('.alert').click
    # find_element(:id, 'dropdown_7')
    # click_button('565c3eb0-80a3-0136-54be-32b0739a0e10')
    sleep 2
  end

  def read_red_button
    find('.alert').text
  end

end
