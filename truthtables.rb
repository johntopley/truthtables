require 'sinatra'
require 'haml'
require 'sass'

set :haml, { :format => :html5 }

configure do
  Rack::Mime::MIME_TYPES['.manifest'] = 'text/cache-manifest'
end

before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/', :agent => /iPhone|iPod/ do
  redirect '/index.html'
end

get '/' do
  haml :index
end

get '/web.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :web
end