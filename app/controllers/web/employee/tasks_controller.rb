class Web::Employee::TasksController < Web::Employee::ApplicationController
  def index
    @tasks = current_employee.tasks.order(created_at: :asc)
  end
end
