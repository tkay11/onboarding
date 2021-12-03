class Web::EmployeesController < Web::ApplicationController
  def index
    @employees = Employee.order(firstname: :asc).where.not(id: current_employee)
  end
end
