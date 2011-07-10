# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Stsh::Application.initialize!

if ENV['RAILS_ENV'] == 'development'
  ENV['RAILS_ASSET_ID'] = ''
end