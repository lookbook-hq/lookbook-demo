require_relative "boot"

require "rails"
# Pick the frameworks you want:
# require "active_model/railtie"
# require "active_job/railtie"
# require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
# require "action_mailer/railtie"
# require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LookbookDemo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.autoload_paths << "#{root}/app"
    %w{render_template render_partial render_collection}.each do |event|
      ActiveSupport::Notifications.unsubscribe "#{event}.action_view"
    end

    config.public_file_server.enabled = true

    config.action_dispatch.default_headers = {
      "X-Frame-Options" => "ALLOWALL"
    }

    config.view_component.default_preview_layout = "preview"
    config.view_component.preview_controller = "PreviewController"
    config.view_component.show_previews = true

    config.lookbook.project_name = "Lookbook Demo"
    config.lookbook.debug_menu = true

    # Assets panel  -----------------

    Lookbook.define_panel("assets", "lookbook/panels/assets", {
      label: "Assets",
      locals: lambda do |data|
        assets = data.preview.components.map do |component|
          # This example expects assets to have the same path as the related component `.rb`
          # file but with a `.js` or `.css` extension
          # `app/components/elements/button.rb` -> `app/components/elements/button.js`
          asset_files = Dir["#{component.file_path.to_s.chomp(".rb")}.{css,js}"]
          asset_files.map { |path| Pathname.new path }
        end.flatten.compact
        { assets: assets }
      end
    })
  end
end
