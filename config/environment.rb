# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Load the app's custom environment variables here, before environments/*.rb
my_constants = File.join(Rails.root, 'config', 'initializers', 'my_constants.rb')
load(my_constants) if File.exists?(my_constants)


# Initialize the Rails application.
Rails.application.initialize!

