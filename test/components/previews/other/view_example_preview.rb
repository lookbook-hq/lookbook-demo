# @label View template example
# @type template
class Other::ViewExamplePreview < Lookbook::Preview

  # @param emoji select { choices: [[🚀 Rocket, 🚀],[❤️ Heart, ❤️],[😱 Scream, 😱]] }
  def default(emoji: "🚀")
    render "partials/_example", emoji: emoji
  end
end
