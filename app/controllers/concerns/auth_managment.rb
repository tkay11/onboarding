module AuthManagment
  def sign_in(employee)
    session[:employee_id] = employee.id
  end

  def employee_sign_out
    session[:employee_id] = nil
  end

  def current_employee
    ::Employee.find_by(id: session[:employee_id])
  end

  def employee_signed_in?
    current_employee
  end

  def authenticate_employee!
    redirect_to root_path unless employee_signed_in?
  end
end
