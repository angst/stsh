Stsh::Application.configure do
  config.cache_classes = false
  config.whiny_nils = true
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.action_dispatch.best_standards_support = :builtin
  ENV['RAILS_ASSET_ID'] = ''

   Rails.application.config.middleware.use OmniAuth::Builder do
     # ALWAYS RESTART YOUR SERVER IF YOU MAKE CHANGES TO THESE SETTINGS!

     # you need a store for OpenID; (if you deploy on heroku you need Filesystem.new('./tmp') instead of Filesystem.new('/tmp'))
     require 'openid/store/filesystem'

     # load certificates
     require "openid/fetchers"
     # OpenID.fetcher.ca_file = "#{Rails.root}/config/ca-bundle.crt"

     # providers with id/secret, you need to sign up for their services (see below) and enter the parameters here
     # provider :facebook, '187483667969120', 'bde7543b5f8c55e1b03e20630a2811c7'
     provider :twitter, '3iOZ9K0UCyMtMF51HQldMQ', 'DA0PHTG1ONlR2Pd49Fc2nx6RYO3eJucecfWZhU64xQ'

     # # generic openid
     # provider :openid, OpenID::Store::Filesystem.new('./tmp'), :name => 'openid'
     # 
     # # dedicated openid
     # provider :openid, OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
     # # provider :google_apps, OpenID::Store::Filesystem.new('./tmp'), :name => 'google_apps'
     # # /auth/google_apps; you can bypass the prompt for the domain with /auth/google_apps?domain=somedomain.com
     # 
     # provider :openid, OpenID::Store::Filesystem.new('./tmp'), :name => 'yahoo', :identifier => 'yahoo.com' 
     # provider :openid, OpenID::Store::Filesystem.new('./tmp'), :name => 'aol', :identifier => 'openid.aol.com'
     # provider :openid, OpenID::Store::Filesystem.new('./tmp'), :name => 'myopenid', :identifier => 'myopenid.com'

     # Sign-up urls for Facebook, Twitter, and Github
     # https://developers.facebook.com/setup
     # https://github.com/account/applications/new
     # https://developer.twitter.com/apps/new
  end
end

