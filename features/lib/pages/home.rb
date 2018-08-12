require 'capybara/dsl'

class Home
  include Capybara::DSL
  DEFAULT_PAGE = 'https://the-internet.herokuapp.com/'

  def visit_site
    visit(DEFAULT_PAGE)
    sleep 2
  end

  def click_challenging_DOM
    click_link('Challenging DOM')
  end

end
