class Web::ProjectsController < Web::ProtectedApplicationController
  def index
    @projects = Project.all
    add_breadcrumbs(projects_path, 'Проекты')
  end
end
