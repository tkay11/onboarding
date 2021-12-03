class Web::WelcomeController < Web::ApplicationController
  skip_before_action :init_breadcrumbs

  def index
  end
end
