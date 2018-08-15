require 'capybara/dsl'

class Home
  include Capybara::DSL

  # Constants
  DEFAULT_PAGE = 'https://the-internet.herokuapp.com/'
  CHALLENGING_DOM_LINK = 'Challenging DOM'
  DYNAMIC_LOADING_LINK = 'Dynamic Loading'

  def visit_site
    visit(DEFAULT_PAGE)
    sleep 2
  end

  def click_challenging_DOM
    click_link(CHALLENGING_DOM_LINK)
  end

  def click_dynamic_loading
    click_link(DYNAMIC_LOADING_LINK)
  end

end
