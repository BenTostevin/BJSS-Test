require 'capybara/dsl'

class Home
  include Capybara::DSL
  CHALLENGING_DOM = 'https://the-internet.herokuapp.com/challenging_dom'
  RED_BUTTON_ID = '#3814c100-806a-0136-4e42-32b0739a0e10'

  def visit_challenging_DOM
    visit(CHALLENGING_DOM)
    sleep 1
  end

  def click_red_button
    find('.alert').click
    # find_element(:id, 'dropdown_7')
    sleep 2
  end

  def read_red_button
    find('.alert').text
  end


end
