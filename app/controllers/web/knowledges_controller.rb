class Web::KnowledgesController < Web::ApplicationController
  def index
    add_breadcrumbs(knowledges_path, 'База знаний')
  end
end
