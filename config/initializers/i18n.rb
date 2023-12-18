# With this line of code, we can use any folder structure for our
# translations in the config/locales directory
I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

# Permitted locales available for the application
I18n.available_locales = %i[en fr]

# Set default locale to something other than :en
I18n.default_locale = :fr
