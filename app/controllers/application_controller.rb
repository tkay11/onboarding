class ApplicationController < ActionController::Base
  include AuthManagment
  helper_method :employee_signed_in?, :current_employee

  before_action :init_breadcrumbs

  skip_before_action :verify_authenticity_token

  def init_breadcrumbs
    @breadcrumbs = [
      {url: '/', name: 'Главная'}
    ]
  end

  def add_breadcrumbs(path, name)
    @breadcrumbs <<  {url: path, name: name}
  end
end
