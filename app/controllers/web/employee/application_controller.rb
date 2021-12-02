class Web::Employee::ApplicationController < Web::ApplicationController
  # http_basic_authenticate_with name: "admin", password: "admin"
  def current_employee
    Employee.first
  end
end
