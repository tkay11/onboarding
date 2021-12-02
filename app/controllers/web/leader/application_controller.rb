class Web::Leader::ApplicationController < Web::ApplicationController
  def current_employee
    Employee.first
  end
end
