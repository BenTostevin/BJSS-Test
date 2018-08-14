require 'capybara/dsl'
require 'rubygems'
require 'httparty'

class Employees
  include Capybara::DSL

  def post(name, salary, age)
    result = HTTParty.post('http://dummy.restapiexample.com/api/v1/create',
        :body =>  { :name => name,
                    :salary => salary,
                    :age => age
                  }.to_json,
        :headers => { 'Content-Type' => 'application/json' } )
  end

  def visit_dummy_api
    visit('http://dummy.restapiexample.com/api/v1/employees')
    sleep 2
  end

  def check_details(name, salary, age)
    page.has_content?(`"employee_name":"#{name}","employee_salary":"#{salary}","employee_age":"#{age}"`)
  end


end
