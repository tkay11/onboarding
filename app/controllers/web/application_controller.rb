class Web::ApplicationController < ApplicationController
  def current_employee
    Employee.find_by(firstname: "Альберт")
  end
end
