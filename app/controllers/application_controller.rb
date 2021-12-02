class ApplicationController < ActionController::Base
  before_action :init_breadcrumbs

  def init_breadcrumbs
    @breadcrumbs = [
      {url: '/', name: 'Главная'}
    ]
  end

  def add_breadcrumbs(path, name)
    @breadcrumbs <<  {url: path, name: name}
  end
end
