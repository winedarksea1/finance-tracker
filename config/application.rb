require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FinanceTracker
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    
    # I just added this 1/29/2020
    
    config.hosts << "08d6d9ae1c2a4360a3b3199060a6a0a1.vfs.cloud9.us-east-2.amazonaws.com"
    config.hosts << "radiant-crag-01011.herokuapp.com"

  end
end
