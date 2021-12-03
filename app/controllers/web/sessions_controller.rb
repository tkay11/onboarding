class Web::SessionsController < Web::ApplicationController
  def create
    employee = ::Employee.find_by_email(params[:employee][:email].strip)

    if employee && employee.authenticate(params[:employee][:password])
      reset_session
      sign_in(employee)
      redirect_to dashboard_index_path
    else
      redirect_to root_path
    end
  end

  def destroy
    employee_sign_out
    redirect_to root_path
  end
end
