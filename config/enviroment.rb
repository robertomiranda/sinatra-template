$: << File.dirname(__FILE__)
require 'yaml'
require 'bundler/setup'
ENV["RACK_ENV"] ||= "development"
YAML::ENGINE.yamler = 'syck'
Bundler.require(:default, ENV["RACK_ENV"].to_sym)
require "sinatra/routes"
Dir["./lib/*.rb"].each {|file| require file }
Dir["./config/initializers/*.rb"].each {|file| require file }
Dir["./models/*.rb"].each {|file| require file }
