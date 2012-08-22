$: << File.dirname(__FILE__)
require "rubygems"
require "bundler"
require "yaml"

Bundler.require(:default, :test)

task :default => :help

Dir['tasks/*.rake'].each { |task| load task }

task :console do
  puts "Loading development console..."
  system("irb -r ./config/enviroment.rb")
end

task :help do
  puts "Available rake tasks: "
  puts "rake console - Run a IRB console with all enviroment loaded"
  puts "rake spec - Run specs"
end
