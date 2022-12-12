# @label View template example
# @type template
class ViewExamplePreview < Lookbook::Preview

  # @param emoji select { choices: [[🚀 Rocket, 🚀],[❤️ Heart, ❤️],[😱 Scream, 😱]] }
  def default(emoji: "🚀")
    render "partials/example", emoji: emoji
  end
end
