class Web::WelcomeController < Web::ApplicationController
  def index
    redirect_to employee_root_path
  end
end
