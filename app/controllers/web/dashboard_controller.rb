class Web::DashboardController < Web::ProtectedApplicationController
  def index
    add_breadcrumbs(dashboard_index_path, [current_employee.lastname, current_employee.firstname, current_employee.patronymic].join(' '))
    add_breadcrumbs(dashboard_index_path, 'Рабочий стол')
  end
end
