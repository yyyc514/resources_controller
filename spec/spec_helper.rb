ENV["RAILS_ENV"] ||= "test"
require 'rails/all'
require 'rspec'
require 'rspec/rails'
require File.expand_path('../../lib/resources_controller', __FILE__)

# RSpec 2 doesn't fight Rails's requiring a template for rendering,
# even in controller specs, so we need to provide empty ones in order to not have
# just about every test fail.
ActionController::Base.view_paths = [File.join(File.dirname(__FILE__), "app/views")]

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
end

require File.dirname(__FILE__) + '/app'