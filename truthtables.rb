require 'sinatra'
require 'haml'
require 'sass'

set :haml, { :format => :html5 }

before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/', :agent => /Apple.*Mobile.*Safari/ do
  #haml :iphone
  redirect '/mobile/index.html'
end

get '/' do
  haml :index
end