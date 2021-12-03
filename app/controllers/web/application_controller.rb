class Web::ApplicationController < ApplicationController
  def current_employee
    Employee.order(id: :asc).first
  end
end
