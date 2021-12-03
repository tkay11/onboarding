class Web::ProtectedApplicationController < Web::ApplicationController
  before_action :authenticate_employee!
end
