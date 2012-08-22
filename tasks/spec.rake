require 'rspec/core/rake_task'

task :spec do
  desc "Run all specs with rcov"
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = "spec/**/*_spec.rb"
  end
end

