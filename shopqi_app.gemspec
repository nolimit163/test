# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "shopqi_app/version"

Gem::Specification.new do |s|
  s.name        = "shopqi_app"
  s.version     = ShopqiApp::VERSION
  s.platform    = Gem::Platform::RUBY
  s.author      = "123"
  s.email       = ["edward@shopify.com", "jonathan@shopify.com", "willem@shopify.com"]
  s.homepage    = "http://www.shopify.com/developers"
  s.summary     = %q{This gem is used to get quickly started with the Shopify API}
  s.description = %q{Creates a basic login controller for authenticating with your Shop and also a product controller which lets your edit your products easily.}

  
  s.add_development_dependency('rake')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
