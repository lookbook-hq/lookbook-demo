require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
# require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LookbookDemo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.public_file_server.enabled = true

    config.view_component.default_preview_layout = "preview"
    config.view_component.preview_controller = "PreviewController"
    config.view_component.show_previews = true

    config.lookbook.project_name = "Lookbook Demo"
    config.lookbook.debug_menu = true

    config.lookbook.experimental_features = true # Opt in to ALL experimental features. Not recommended!

    # Info panel -----------------

    Lookbook.data.docs_url = "https://beta.lookbook.build/"

    Lookbook.define_panel(:more, {
      label: "Info",
      partial: "lookbook/panels/info",
    })

    # Design panel -----------------

    Lookbook.define_tag(:design, [:source, :url]) do |tag|
      tag.source = tag.source.to_sym
    end
    
    Lookbook.define_panel(:design, {
      label: "Designs",
      partial: "lookbook/panels/design",
      disabled: lambda do |data|
        data.preview.tags(:design).none? &&
          data.examples.filter { |e| e.tag(:design).present? }.none?
      end,
      locals: lambda do |data|
        entities_with_designs = []

        if data.preview.tags(:design).any?
          entities_with_designs << data.preview
        end

        entities_with_designs += data.examples.filter do |example|
          example.tag(:design).present?
        end

        { entities_with_designs: entities_with_designs }
      end
    })

  end
end
