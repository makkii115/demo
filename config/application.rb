require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.


module Demo
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    Rails.application.config.assets.paths << Rails.root.join("vendor", "bundle", "ruby","2.1.0","gems","bootstrap-sass-2.3.2.2","vendor","assets","stylesheets")


    config.assets.paths << File.expand_path("demo/vendor/bundle/ruby/2.1.0/gems/jquery-ui-rails-5.0.5/app/assets/javascripts/", __FILE__)
    config.assets.paths << File.expand_path("demo/vendor/bundle/ruby/2.1.0/gems/jquery-ui-rails-4.0.5/vendor/assets/javascripts/", __FILE__)

  end
end
