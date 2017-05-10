Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Enable Rack::Cache to put a simple HTTP cache in front of your application
  # Add `rack-cache` to your Gemfile before enabling this.
  # For large-scale production use, consider using a caching reverse proxy like
  # NGINX, varnish or squid.
  # config.action_dispatch.rack_cache = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true
  config.log_level = :debug
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
  
  # Force all access to the app over SSL, use Strict-Transport-Security,
  # and use secure cookies.
  config.force_ssl = true
  
  # config.action_mailer.default_url_options = { :host => 'myapp.herokuapp.com' }  
  # config.action_mailer.default_url_options = { :host => 'https://cmsc128-rexolis.c9users.io' }  
  config.action_mailer.delivery_method = :smtp  
  config.action_mailer.perform_deliveries = true  
  config.action_mailer.raise_delivery_errors = false  
  config.action_mailer.default :charset => "utf-8"  
  config.action_mailer.smtp_settings = {  
    address: "smtp.gmail.com",
    domain: "google.com",
    port: 587,
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: 'addms331@gmail.com',
    password: 'administrator.ddms2017'
    # user_name: ENV['gmail_username'],
    # password: ENV['gmail_password']
  }
end
