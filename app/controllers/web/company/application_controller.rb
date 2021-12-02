class Web::Company::ApplicationController < Web::ApplicationController
  # http_basic_authenticate_with name: "admin", password: "admin"
  def current_company
    Company.first
  end
end
