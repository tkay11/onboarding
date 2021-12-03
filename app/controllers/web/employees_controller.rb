class Web::EmployeesController < Web::ProtectedApplicationController
  def index
    @employees = Employee.order(firstname: :asc).where.not(id: current_employee)
    add_breadcrumbs(employees_path, 'Коллеги')
  end
end
