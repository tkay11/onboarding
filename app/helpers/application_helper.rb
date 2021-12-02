module ApplicationHelper
  def han(model, attribute)
    model.to_s.classify.constantize.human_attribute_name(attribute)
  end

  def hsen(model, state, value)
    model.to_s.classify.constantize.send "human_#{state}_event_name", value
  end

  def state_badge_class(state)
    classes = {
      'active' => 'badge badge-success',
      'deleted' => 'badge badge-danger'
    }
    classes[state]
  end

  def current_page_url
    request.original_url
  end

  def page_url_without_params(options = {})
    uri = URI(options[:url] || current_page_url)
    uri.host = configus.domain_name
    uri.scheme = 'https'
    uri.query = nil
    uri.to_s
  rescue StandardError
    options[:url] || current_page_url
  end

  def absolute_resource_url(options = {})
    uri = URI(root_url)
    uri.scheme = 'https'
    uri.path = options[:path]
    uri.to_s
  end

  # pagination
  def paginate_per_page_values
    configus.pagination.per_page_values
  end

  def paginate_per_page_item(tag, value, path, link_options = {})
    options = {}
    options[:class] = :active if current_per_page.to_i == value

    link = link_to(value, path, link_options)
    content_tag(tag, link, options)
  end

  private

  def current_per_page
    params[:per_page] || Kaminari.config.default_per_page
  end
end
