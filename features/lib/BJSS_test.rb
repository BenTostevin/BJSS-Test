require 'capybara/dsl'
require_relative './pages/home.rb'
require_relative './pages/challenging_DOM.rb'


class BJSS_Test

  def home
    Home.new
  end

  def challenging_DOM
    Challenging_DOM.new
  end

  def dynamic_loading
    Dynamic_Loading.new
  end

end
