require_relative 'boot'

require 'rails/all'
require 'hamlit'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
# Bundler.require(:default, Rails.env)

Bundler.require(*Rails.groups)
load 'lib/configus.rb'

module App
  class Application < Rails::Application
    config.load_defaults 6.1

    config.autoload_paths << Rails.root.join('lib')
    config.eager_load_paths << Rails.root.join('lib')

    config.action_controller.permit_all_parameters = true

    config.time_zone = 'Moscow'
    config.i18n.default_locale = :ru

    config.exceptions_app = routes

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :test_unit, fixture: false
      g.fixture_replacement :factory_bot
    end
  end
end
