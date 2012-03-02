require 'shopqi_api'

module ShopqiApp

  def self.configuration
    @configuration ||= ShopqiApp::Configuration.new
  end
  
  def self.setup_session
    ShopqiAPI::Session.setup(:api_key => ShopqiApp.configuration.api_key, :secret => ShopqiApp.configuration.secret)
  end
end

require 'shopqi_app/login_protection'
require 'shopqi_app/configuration'
require 'shopqi_app/railtie'
require 'shopqi_app/version'
