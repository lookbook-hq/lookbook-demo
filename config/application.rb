require_relative "boot"

require "rails"
require "action_controller/railtie"
require "action_text/engine"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module LookbookDemo
  class Application < Rails::Application
    config.load_defaults 7.0

    Rails.autoloaders.main.collapse("app/components/*/*")

    # Lookbook configuration
    #
    # See https://lookbook.build/guide/config for
    # defails of all available config options

    config.lookbook.project_name = "Lookbook Demo"

    config.lookbook.preview_paths << Rails.root.join("lookbook/previews")

    config.lookbook.preview_layout = "preview"

    config.lookbook.preview_controller = "PreviewController"

    config.lookbook.preview_embeds.policy = "ALLOWALL"

    # config.lookbook.preview_display_options = {
    #   theme: ["light", "dark"] # dynamic 'theme' display option
    # }

    config.lookbook.page_paths << Rails.root.join("lookbook/pages")

    config.lookbook.debug_menu = true

    Lookbook.update_panel(:notes, {
      partial: "lookbook/panels/notes",
      disabled: ->(data) do
        data.preview.notes.empty? &&
          data.scenarios.select { |e| e.notes.present? }.none?
      end
    })

    # This is an simple example of creating a custom panel.
    # This one is an assets panel that is used to display the
    # contents of any CSS/JS assets for a component.
    #
    # It assumes that asset files are named the same as the component
    # file but with a `.css/.js` file extesions.
    Lookbook.add_panel("assets", "lookbook/panels/assets", {
      label: "Assets",
      locals: lambda do |data|
        assets = data.preview.render_targets.flat_map do |target|
          puts "#{target.directory_path}/#{target.file_name(true)}.{css,js}"
          asset_files = Dir["#{target.directory_path}/#{target.file_name(true)}.{css,js}"]
          asset_files.map { |path| Pathname.new path }
        end.compact
        {assets: assets}
      end
    })

    # ----------------------------------------------------------- #

    # Other configuration
    #
    # Any other non-Lookbook or ViewComponent config
    # required to run the demo app.

    # Autoload app dir (required by Phlex)
    config.autoload_paths << "#{root}/app"

    # Reduce action view log spam
    %w[render_template render_partial render_collection].each do |event|
      ActiveSupport::Notifications.unsubscribe "#{event}.action_view"
    end
  end
end
