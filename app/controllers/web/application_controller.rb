class Web::ApplicationController < ApplicationController
  def current_employee
    Employee.first
  end
end
