# require bundler && gems from Gemfile
require 'bundler'
Bundler.require()

def some_json
  {:name => 'Sinatra', :message => 'Sinatra rocks!', :awesome => 'this is really, really awesome'}.to_json
end

# get request
# http://localhost/
# http://awesome.com/
# http://google.com/ --- the "/" is important here
get '/' do
  some_json
end
