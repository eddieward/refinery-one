source 'http://rubygems.org'

#ruby "1.8.7"

gem 'rails', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


group :development do
  gem 'sqlite3'
end




group :production do
  gem 'mysql2'
  gem 'rack-google_analytics', :require => "rack/google_analytics"
end


gem 'fog'
gem 'aws-s3'

gem "simple_form"



# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do

#gem 'mongrel'

# comment out for deployment to site5 ------------ ** Notice ** ------------
#gem 'sqlite3-ruby', :require => 'sqlite3'

end

# REFINERY CMS ================================================================

java = (RUBY_PLATFORM == 'java')

# Specify the Refinery CMS core:
gem 'refinerycms', '~> 0.9.8.9'

# Specify additional Refinery CMS Engines here (all optional):
gem 'refinerycms-inquiries', '~> 0.9'
# gem 'refinerycms-news',       '~> 0.9.9'
# gem 'refinerycms-portfolio',  '~> 0.9.8'
# gem 'refinerycms-theming',    '~> 0.9.8'

# Add i18n support (optional, you can remove this if you really want to).
gem 'refinerycms-i18n', '~> 0.9'

# END REFINERY CMS ============================================================

# USER DEFINED

# captcha
gem "recaptcha", :require => "recaptcha/rails"

# for adding environment variables
gem 'figaro'

# END USER DEFINED

gem 'refinerycms-attachments', '1.0', :path => 'vendor/engines', :require => 'attachments'
gem 'refinerycms-instructions', '1.0', :path => 'vendor/engines', :require => 'instructions'