require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
    config.time_zone = 'Prague'
    config.i18n.available_locales = [:en, :cs]
    config.i18n.default_locale = :cs
  end
end
