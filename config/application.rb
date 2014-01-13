require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module BBSOfLee
  class Application < Rails::Application
    config.time_zone = "Asia/Shanghai"
  end
end
