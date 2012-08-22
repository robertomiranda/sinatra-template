ENV['RACK_ENV'] = "test"
require 'simplecov'
SimpleCov.start  do
  load_adapter 'test_frameworks'

  add_group 'Models', 'models/'
  add_group 'Controllers', 'controllers/'
  add_group 'Libraries', 'lib/'
end

require File.expand_path(File.dirname(__FILE__) + "/../config/enviroment")
require File.join(File.dirname(__FILE__), '..', 'application')

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.mock_with :rspec
end


