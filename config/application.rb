require_relative "boot"

require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

Webpacker::Compiler.env["TAILWIND_MODE"] = "build"

module LookbookDemo
  class Application < Rails::Application
    config.load_defaults 6.1

    config.view_component.default_preview_layout = "preview"
    config.view_component.preview_controller = "PreviewController"

    config.lookbook.experimental_features = true # Opt in to ALL experimental features. Not recommended!

    Rack::MiniProfiler.config.start_hidden = true
  end
end
