class Web::AboutController < Web::ApplicationController
  def index
    add_breadcrumbs(about_index_path, 'О банке')
  end
end
