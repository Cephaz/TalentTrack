# frozen_string_literal: true

# Application helper
module ApplicationHelper
  # rubocop:disable Rails/OutputSafety
  def show_svg(icon_name, options = {})
    file = Rails.root.join('app', 'assets', 'images', "#{icon_name}.svg").read
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'

    options.each { |attr, value| svg[attr.to_s] = value }

    doc.to_html.html_safe
  end
  # rubocop:enable Rails/OutputSafety
end
