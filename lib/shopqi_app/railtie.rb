require 'rails'

class ShopqiApp::Railtie < ::Rails::Railtie

  config.before_configuration do
    config.shopqi = ShopqiApp.configuration
  end
  
  initializer "shopqi_app.action_controller_integration" do
    ActionController::Base.send :include, ShopqiApp::LoginProtection
    ActionController::Base.send :helper_method, :current_shop
  end
  
  initializer "shopqi_app.setup_session" do
    ShopqiApp.setup_session
  end
end
