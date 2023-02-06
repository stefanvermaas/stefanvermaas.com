# frozen_string_literal: true

Bridgetown.configure do |config|
  config.url = "https://www.stefanvermaas.com"

  config.lang = "en_US"
  config.timezone = "Europe/Amsterdam"

  config.permalink = "pretty"
  config.template_engine = "erb"

  init :"bridgetown-feed"
  init :"bridgetown-seo-tag"
  init :"bridgetown-svg-inliner"
end
