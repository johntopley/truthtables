require 'sinatra'
require 'haml'
require 'sass'
require 'manifesto'

set :haml, { :format => :html5 }

before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/', :agent => /iPhone|iPod/ do
  redirect '/index.html'
end

get '/' do
  haml :index
end

get '/manifest' do
  headers 'Content-Type' => 'text/cache-manifest'
  Manifesto.cache
end

get '/web.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :web
end