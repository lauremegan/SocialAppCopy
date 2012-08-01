source 'https://rubygems.org'
# change the rails version
#gem 'rails', '3.2.6'
gem 'rails', '3.2.6'
gem 'bootstrap-sass', '2.0.0'
# this gem is to encrypt the password to form the password hash
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'

group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.10.0'

# This gives us a command called annotate, which simply adds comments 
#containing the data model to the model file:
 # gem 'annotate', '~> 2.4.1.beta'
 # group :test do
end
#gem 'annotate', '~> 2.4.1.beta'
#group :test do

#Factory Girl is only needed in the tests, 
#we’ve put it in the :test group.)
gem 'factory_girl_rails', '1.4.0'
	
 # end
  
#gem 'annotate', '~> 2.4.1.beta', group: :development


#group :test do (not working: 28/07/2012
	
	

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.0'

group :test do
  gem 'capybara', '1.1.2'
  gem 'cucumber-rails', '1.2.1', require: false
  gem 'database_cleaner', '0.7.0'
  
  
end

group :production do
  gem 'pg', '0.12.2'
end
