require './boot.rb'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'app/code'
  environment.append_path 'app/images'
  environment.append_path 'app/styles'
  run environment
end

map '/' do
  run Sinatra::Application
end