require 'sinatra'
require 'haml'
require 'sass'

set :haml, { :format => :html5 }

before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/', :agent => /Apple.*Mobile.*Safari/ do
  haml :iphone
end

get '/installation', :agent => /Apple.*Mobile.*Safari/ do
  haml :installation
end

get '/installation' do
  haml :iphone
end

get '/' do
  haml :index
end