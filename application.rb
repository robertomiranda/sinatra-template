class Application < Sinatra::Base
  register Sinatra::Routes # It helps you to place routes in separate files, grouped by their goal.
  use Rack::NestedParams # parses form params with subscripts (e.g., * “post[title]=Hello”) into a nested/recursive Hash structure (based on Rails’ implementation).
  set :haml, :format => :html5
end
Dir["./controllers/*.rb"].each {|file| require file }
