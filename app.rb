# require bundler && gems from Gemfile
require 'bundler'
Bundler.require()

def some_json
  {:name => 'Sinatra', :message => 'Sinatra rocks!', :awesome => 'this is really, really awesome'}.to_json
end

## handle requests for resources not found?
not_found do
  #send results for not found resources
  status 404
  #{:status => 404, :message => 'Resource not found.'}.to_json
  erb :not_found
end

# get request
# http://localhost/
# http://awesome.com/
# http://google.com/ --- the "/" is important here
get '/' do
  erb :index  # erb says! hey! go find 'index.erb' and share it
end

get '/about' do
  erb :about
end

# get: localhost/api/json
get '/api/json' do
  some_json
end
