module ShopqiApp::LoginProtection
  def shopqi_session
    if session[:shopqi]
      begin
        # session[:shopify] set in LoginController#finalize
        ShopqiAPI::Base.site = session[:shopqi].site
        yield
      ensure 
        ShopqiAPI::Base.site = nil
      end
    else
      session[:return_to] = request.fullpath
      redirect_to login_path
    end
  end
  
  def current_shop
    session[:shopqi]
  end
end
